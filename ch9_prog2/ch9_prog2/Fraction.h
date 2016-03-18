//
// Created by Shuieryin on 3/15/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject

@property int numerator, denominator;

- (void)print;

- (void)setTo:(int)n over:(int)d;

- (double)convertToNum;

- (Fraction *)add:(Fraction *)f;

- (void)reduce;

@end