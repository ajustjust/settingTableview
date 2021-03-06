//
//  CustomTableCell.m
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "CustomTableCell.h"
#import "RowItem.h"



// 判断是否为iOS7
#define iOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)

// 获得RGB颜色
#define MYColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

@interface CustomTableCell()

@property (nonatomic, strong) UIImageView *rightView;/*右边小图片 */
@property (nonatomic, strong) UISwitch *switchView;/*  开关  */
@property (nonatomic, strong) UILabel *labelView;/*  标签  */
@property (nonatomic, weak) UIView *divider;

@end

@implementation CustomTableCell
//懒加载，由于cell复用机制，最好只创建一次
- (UIImageView *)rightView
{
    if (_rightView == nil) {

    NSMutableString *rightIcon = [NSMutableString stringWithFormat:@"0%ld",(long)_item.rightIcon];
    _rightView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:rightIcon]];
           }
    return _rightView;
}
//懒加载，由于cell复用机制，最好只创建一次
- (UISwitch *)switchView
{
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
        [_switchView addTarget:self action:@selector(switchStateChange) forControlEvents:UIControlEventValueChanged];
    }
    return _switchView;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 初始化操作
        
        // 1.初始化背景
        [self setupBg];
        
        // 2.初始化子控件
        [self setupSubviews];
        
        // 3.初始化分割线
        if (!iOS7) {
            [self setupDivider];
        }
    }
    return self;
}

/**
 *  初始化子控件
 */
- (void)setupSubviews
{
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.backgroundColor = [UIColor clearColor];
}

/**
 *  初始化背景
 */
- (void)setupBg
{
    // 设置普通背景
    UIView *bg = [[UIView alloc] init];
    bg.backgroundColor = [UIColor whiteColor];
    self.backgroundView = bg;
    
    // 设置选中时的背景
    UIView *selectedBg = [[UIView alloc] init];
    selectedBg.backgroundColor = MYColor(237, 233, 218);
    self.selectedBackgroundView = selectedBg;
}

/**
 *  初始化分割线
 */
- (void)setupDivider
{
    UIView *divider = [[UIView alloc] init];
    divider.backgroundColor = [UIColor blackColor];
    divider.alpha = 0.2;
    [self.contentView addSubview:divider];
    self.divider = divider;
}

/**
 *  监听开关状态改变
 */
- (void)switchStateChange
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //    if (self.item.key) {
    [defaults setBool:self.switchView.isOn forKey:self.item.title];
    [defaults synchronize];
    //    }
}

- (UILabel *)labelView
{
    if (_labelView == nil) {
        _labelView = [[UILabel alloc] init];
        _labelView.bounds = CGRectMake(0, 0, 100, 30);
        _labelView.backgroundColor = [UIColor redColor];
    }
    return _labelView;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"setting";

    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    return cell;
}

/**
 *  拦截frame的设置
 */
- (void)setFrame:(CGRect)frame
{
    if (!iOS7) {
        CGFloat padding = 10;
        frame.size.width += padding * 2;
        frame.origin.x = -padding;
    }
    [super setFrame:frame];
}

/**
 *  设置子控件的frame
 */
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (iOS7) return;
    
    // 设置分割线的frame
    CGFloat dividerH = 1;
    CGFloat dividerW = [UIScreen mainScreen].bounds.size.width;
    CGFloat dividerX = 0;
    CGFloat dividerY = self.contentView.frame.size.height - dividerH;
    self.divider.frame = CGRectMake(dividerX, dividerY, dividerW, dividerH);
}

- (void)setItem:(RowItem *)item
{
    _item = item;
    // 2.设置右边的内容
    [self setupRightContent];
    // 1.设置数据
    [self setupData];
    
   
}

- (void)setLastRowInSection:(BOOL)lastRowInSection
{
    _lastRowInSection = lastRowInSection;
    
    self.divider.hidden = lastRowInSection;
}

/**
 *  设置右边的内容
 */
- (void)setupRightContent
{
    switch (_item.rightIcon) {
       
        case CellTypeSwitch:
        { //开关
            self.accessoryView = self.switchView;
            self.selectionStyle = UITableViewCellSelectionStyleNone;
            // 设置开关的状态
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            self.switchView.on = [defaults boolForKey:_item.title];
        }
            break;
 
       case CellTypeNone:
        {
            self.accessoryView = nil;
            self.selectionStyle = UITableViewCellSelectionStyleDefault;
        }
            break;
        case CellTypeLabel:
        {
            self.accessoryView = self.labelView;
            self.selectionStyle = UITableViewCellSelectionStyleDefault;
         }
            break;
          default:
        {
           
            self.accessoryView = self.rightView;
            self.selectionStyle = UITableViewCellSelectionStyleDefault;
        }
            break;
            
    }
    
    
    

   

}

/**
 *  设置数据
 */
- (void)setupData
{
    if (self.item.icon) {
        self.imageView.image = [UIImage imageNamed:self.item.icon];
    }
    self.textLabel.text = self.item.title;
    
}

@end
