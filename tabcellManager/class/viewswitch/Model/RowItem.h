//
//  VCItem.h
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//一个VCItem对应一行row的cell

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, CellType) {

    CellTypeNone = 0,
    CellTypeSwitch,
    CellTypeLabel,
    
};

typedef void (^MJSettingItemOption)();

@interface RowItem : NSObject

///可自由添加，根据自己的cell的每一行需要的数据模型
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, assign)NSInteger  rightIcon;
@property (nonatomic, assign) Class goalVCClass;
@property (nonatomic, assign) CellType cellType;


/**  点击那个cell需要做什么事情*/
@property (nonatomic, copy) MJSettingItemOption option;


+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title type:(NSInteger)rightIcon  goalVCClass:(Class)goalVCClass;
//+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title type:(CellType)cellType  goalVCClass:(Class)goalVCClass;

-(void)rowItemOptionblock:(void (^)())rowItemOption;
@end
