//
//  VCItem.m
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "RowItem.h"
@interface RowItem ()

@end
@implementation RowItem

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title type:(NSInteger)rightIcon  goalVCClass:(Class)goalVCClass{

    RowItem *item = [[self alloc]init];
    item.icon = icon;
    item.title = title;
    item.rightIcon = rightIcon;
    item.goalVCClass = goalVCClass;
    //item.cellType= cellType;
    return item;
}


+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title
{
    return [self itemWithIcon:icon title:icon type:CellTypeNone goalVCClass:nil];
}


-(void)rowItemOptionblock:(void (^)())rowItemOption
{
   self.option= rowItemOption;
}
@end
