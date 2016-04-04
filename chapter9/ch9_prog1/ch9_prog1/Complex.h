//
// Created by Shuieryin on 3/18/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Interface file for Complex class

@interface Complex : NSObject

@property double real, imaginary;

- (void)print;

- (void)setReal:(double)a andImaginary:(double)b;

- (Complex *)add:(Complex *)f;

@end