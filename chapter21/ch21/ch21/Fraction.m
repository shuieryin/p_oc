//
// Created by Shuieryin on 3/15/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Fraction.h"

static int gCounter = 0;

@implementation Fraction

@synthesize numerator, denominator;

- (instancetype)init {
    return [self initWidth:0 over:0];
}

- (instancetype)initWidth:(int)n over:(int)d {
    self = [super init];

    if (self) {
        [self setTo:n over:d];
    }

    return self;
}

- (void)print {
    NSLog(@"%i/%i ", numerator, denominator);
}

- (void)setTo:(int)n over:(int)d {
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

- (Fraction *)add:(Fraction *)f {
    // To add two fractions
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)

    Fraction *result = [Fraction new];

    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;

    [result reduce];
    return result;
}

- (Fraction *)subtract:(Fraction *)f {
    // To sub two fractions:
    // a / b - c / d = ((a * d) - (b * c)) / (b * d)

    Fraction *result = [[Fraction alloc] init];

    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;

    [result reduce];
    return result;
}

- (Fraction *)multiply:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];

    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];

    return result;
}

- (Fraction *)divide:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];

    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
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

+ (Fraction *)allocF {
    extern int gCounter;
    ++gCounter;

    return [Fraction alloc];
}

+ (int)count {
    extern int gCounter;
    return gCounter;
}

- (NSString *)convertToString {
    if (numerator == denominator) {
        if (numerator == 0) {
            return @"0";
        } else {
            return @"1";
        }
    } else if (denominator == 1) {
        return [NSString stringWithFormat:@"%i", numerator];
    } else {
        return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
    }
}

@end