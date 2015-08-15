//
//  AccountSecurityController.m
//  tabcellManager
//
//  Created by MAC-yanghua on 15/8/15.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "AccountSecurityController.h"
#import "RowItem.h"
#import "SectionItem.h"
@interface AccountSecurityController ()

@end

@implementation AccountSecurityController

- (void)viewDidLoad {
    [super viewDidLoad];
    //行数据
    RowItem * rowItem1 = [ RowItem itemWithIcon:@"ddd" title:@"收货地址管理" type:CellTypeSwitch goalVCClass:nil];
    RowItem * rowItem2 = [ RowItem itemWithIcon:@"w" title:@"账户安全（可修改密码）" type:75 goalVCClass:nil];
    RowItem * rowItem3 = [ RowItem itemWithIcon:@"ddd" title:@"京东通讯营业厅" type:22 goalVCClass:nil];
   
    
    //组数据
    SectionItem*sectionItem1 =[SectionItem itemWithfooter:nil header:nil rowItems:@[rowItem1,rowItem2,rowItem3]];
    
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
