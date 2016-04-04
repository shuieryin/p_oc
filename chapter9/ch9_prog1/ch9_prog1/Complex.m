//
// Created by Shuieryin on 3/18/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Complex.h"
#import "Complex.h"

// Implementation file for Complex class

@implementation Complex

@synthesize real, imaginary;

- (void)print {
    NSLog(@" %g + %gi ", real, imaginary);
}

- (void)setReal:(double)a andImaginary:(double)b {
    real = a;
    imaginary = b;
}

- (Complex *)add:(Complex *)f {
    Complex *result = [Complex new];

    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;

    return result;
}

@end