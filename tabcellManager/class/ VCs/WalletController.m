//
//  WalletController.m
//  tabcellManager
//
//  Created by MAC-yanghua on 15/8/15.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "WalletController.h"
#import "RowItem.h"
#import "SectionItem.h"

@interface WalletController ()

@end

@implementation WalletController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //一行数据
    RowItem * rowItem1 = [ RowItem itemWithIcon:@"023" title:@"账户余额" type:44 goalVCClass:nil];
    RowItem * rowItem2 = [ RowItem itemWithIcon:@"014" title:@"优惠劵" type:CellTypeNone goalVCClass:nil];
    RowItem * rowItem3 = [ RowItem itemWithIcon:@"075" title:@"康豆" type:75 goalVCClass:nil];
    RowItem * rowItem4 = [ RowItem itemWithIcon:@"015" title:@"京东卡/E卡" type:CellTypeSwitch goalVCClass:nil];
    //第一组数据
    SectionItem*sectionItem1 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem1,rowItem2,rowItem3,rowItem4]];
    
    
    //行数据
    RowItem * rowItem5 = [ RowItem itemWithIcon:@"ddd" title:@"京东白条" type:33 goalVCClass:nil];
    RowItem * rowItem6 = [ RowItem itemWithIcon:@"w" title:@"京东小金库" type:11 goalVCClass:nil];

    //二组数据
    SectionItem*sectionItem2 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem5,rowItem6]];
   
    
    [self.data addObjectsFromArray:@[sectionItem1,sectionItem2]];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
