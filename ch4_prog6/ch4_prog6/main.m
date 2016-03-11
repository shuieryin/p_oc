//
//  main.m
//  ch4_prog6
//
//  Created by Shuieryin on 3/10/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

// Implement a Calculator class

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// accumulator methods
- (void)setAccumulator:(double)value;

- (void)clear;

- (double)accumulator;

// arithmetic methods
- (double)add:(double)value;

- (double)subtract:(double)value;

- (double)multiply:(double)value;

- (double)divide:(double)value;

@end

@implementation Calculator {
    double accumulator;
}

- (void)setAccumulator:(double)value {
    accumulator = value;
}

- (void)clear {
    accumulator = 0;
}

- (double)accumulator {
    return accumulator;
}

- (double)add:(double)value {
    return accumulator += value;
}

- (double)subtract:(double)value {
    return accumulator -= value;
}

- (double)multiply:(double)value {
    return accumulator *= value;
}

- (double)divide:(double)value {
    return accumulator /= value;
}

@end

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init]; // [Calculator new];

        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.0];
        [deskCalc multiply:5];
        NSLog(@"The result is %g", [deskCalc accumulator]);
        [deskCalc clear];
        NSLog(@"Cleared result is %g", [deskCalc accumulator]);
    }

    return 0;
}