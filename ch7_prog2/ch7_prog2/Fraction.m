//
// Created by Shuieryin on 3/15/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

@synthesize numerator, denominator;

- (void)print {
    NSLog(@"%i/%i ", numerator, denominator);
}

- (void)setTo:(int)n :(int)d {
    numerator = n;
    denominator = d;
}

- (double)convertToNum {
    if (denominator != 0) {
        return (double) numerator / denominator;
    } else {
        return NAN;
    }
}

// add a Fraction to the receiver

- (void)add:(Fraction *)f {
    // To add two fractions
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)

    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator *= f.denominator;
}

- (void)reduce {
    int u = numerator;
    int v = denominator;
    int temp;

    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    numerator /= u;
    denominator /= u;
}

@end