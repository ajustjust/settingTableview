//
//  CustomTableCell.h
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RowItem;

//typedef NS_ENUM(NSInteger, CellType) {
//  
//    
//};




@interface CustomTableCell : UITableViewCell


@property (nonatomic, strong) RowItem *item;
@property (nonatomic, assign, getter = isLastRowInSection) BOOL lastRowInSection;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
