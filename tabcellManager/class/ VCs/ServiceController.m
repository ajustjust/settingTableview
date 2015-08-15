//
//  ServiceController.m
//  tabcellManager
//
//  Created by MAC-yanghua on 15/8/15.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "ServiceController.h"
#import "RowItem.h"
#import "SectionItem.h"
@interface ServiceController ()

@end

@implementation ServiceController

- (void)viewDidLoad {
    [super viewDidLoad];
    //行数据
    RowItem * rowItem1 = [ RowItem itemWithIcon:@"ddd" title:@"返修/退货" type:CellTypeNone goalVCClass:nil];
    RowItem * rowItem2 = [ RowItem itemWithIcon:@"w" title:@"JIMI机器人" type:CellTypeSwitch goalVCClass:nil];
    RowItem * rowItem3 = [ RowItem itemWithIcon:@"ddd" title:@"客服" type:CellTypeLabel goalVCClass:nil];
    RowItem * rowItem4 = [ RowItem itemWithIcon:@"ddd" title:@"电话预约服务" type:CellTypeNone goalVCClass:nil];
     RowItem * rowItem5 = [ RowItem itemWithIcon:@"ddd" title:@"配送服务查询" type:45 goalVCClass:nil];
    
    //组数据
    SectionItem*sectionItem1 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem1,rowItem2,rowItem3,rowItem4,rowItem5]];
    
    //加到控制的Data里
    [self.data addObjectsFromArray:@[sectionItem1]];
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
