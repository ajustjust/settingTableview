//
//  SectionItem.h
//  tabcellManager
//
//  Created by xxzx on 15/8/14.
//  Copyright (c) 2015年 hxyxt. All rights reserved.

//一个SectionItem代表一个tableview里的一个Section组

#import <Foundation/Foundation.h>

@interface SectionItem : NSObject

///可自由添加，根据自己的cell的每一组需要的数据模型

@property (nonatomic, copy) NSString *footer;
@property (nonatomic, copy) NSString *header;

/**存放着这组所有行的数据模型(这个数组中都是RowItem对象)*/
@property (nonatomic, strong) NSArray *rowItems;

@end
