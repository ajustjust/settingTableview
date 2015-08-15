//
//  SectionItem.m
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.
//

#import "SectionItem.h"

@implementation SectionItem


+ (instancetype)itemWithfooter:(NSString*)footer header:(NSString*)header rowItems:(NSArray*)rowItems
{
    SectionItem *item = [[self alloc]init];
    item.footer = footer;
    item.header = header;
    item.rowItems= rowItems;
   
    return item;
}
@end
