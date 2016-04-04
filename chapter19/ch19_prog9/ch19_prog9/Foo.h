//
// Created by Shuieryin on 4/3/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Foo : NSObject <NSCoding>

@property(copy, nonatomic) NSString *strVal;
@property int intVal;
@property float floatVal;

@end