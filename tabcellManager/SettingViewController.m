//
//  SettingViewController.m
//  tabcellManager
//
//  Created by MAC-yanghua on 15/8/15.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "SettingViewController.h"
#import "RowItem.h"
#import "SectionItem.h"
#import "WalletController.h"
#import "AccountSecurityController.h"
#import "ServiceController.h"
#import "OrderController.h"
@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    //行数据
    RowItem * rowItem1 = [ RowItem itemWithIcon:@"005" title:@"全部订单" type:34 goalVCClass:[OrderController class]];
    RowItem * rowItem2 = [ RowItem itemWithIcon:@"002" title:@"我的钱包" type:11 goalVCClass:[WalletController class]];
    RowItem * rowItem3 = [ RowItem itemWithIcon:@"007" title:@"我的关注" type:13 goalVCClass:nil];
//   //需要在点击这行后执行的block
    [rowItem3 rowItemOptionblock:^{
        
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@" 提示" message:@"我在点击后执行了" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
        [alertVC addAction:okAction];
        [self presentViewController:alertVC animated:YES completion:nil];
        NSLog(@"看看执行了嘛");
    }];
    RowItem * rowItem4 = [ RowItem itemWithIcon:@"008" title:@"我的消息" type:2 goalVCClass:nil];
    RowItem * rowItem5 = [ RowItem itemWithIcon:@"009" title:@"我的预约" type:CellTypeNone goalVCClass:nil];

    RowItem * rowItem6 = [ RowItem itemWithIcon:@"064" title:@"账户与安全" type:1 goalVCClass:[AccountSecurityController class]];
    RowItem * rowItem7 = [ RowItem itemWithIcon:@"049" title:@"服务与管家" type:71 goalVCClass:[ServiceController class]];
    RowItem * rowItem8 = [ RowItem itemWithIcon:@"075" title:@"意见与反馈" type:75 goalVCClass:nil];

    //组数据
    SectionItem*sectionItem1 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem1,rowItem2]];
    SectionItem*sectionItem2 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem3,rowItem4,rowItem5]];
    SectionItem*sectionItem3 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem6,rowItem7,rowItem8]];

    //加到控制的Data里
   [self.data addObjectsFromArray:@[sectionItem1,sectionItem2, sectionItem3]];

    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
