//
// Created by Shuieryin on 3/16/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Rectangle.h"


@implementation Rectangle

@synthesize width, height;

- (int)area {
    return width * height;
}

- (int)perimeter {
    return (width + height) * 2;
}

- (void)setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}

@end