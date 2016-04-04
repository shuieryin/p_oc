//
// Created by Shuieryin on 3/15/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

@synthesize numerator, denominator;

- (void)print {
    NSLog(@" %i/%i ", numerator, denominator);
}

- (double)convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}
@end