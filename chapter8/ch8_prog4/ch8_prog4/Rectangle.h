//
// Created by Shuieryin on 3/16/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

@property int width, height;

- (XYPoint *)origin;

- (void)setOrigin:(XYPoint *)pt;

- (int)area;

- (int)perimeter;

- (void)setWidth:(int)w andHeight:(int)h;

@end