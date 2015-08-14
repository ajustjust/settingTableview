//
//  VCItem.m
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "RowItem.h"

@implementation RowItem

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title goalVCClass:(Class)goalVCClass{

    RowItem *item = [[self alloc]init];
    item.icon = icon;
    item.title = title;
    item.goalVCClass = goalVCClass;
    
    return item;
}


+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title
{
    return [self itemWithIcon:icon title:title goalVCClass:nil];
}

@end
