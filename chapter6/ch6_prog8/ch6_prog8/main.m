//
//  main.m
//  ch6_prog8
//
//  Created by Shuieryin on 3/14/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to evaluate simple expressions of the form number operator number
// Implement a Calculator class

@interface Calculator : NSObject

// accumulator methods
- (void)setAccumulator:(double)value;

- (void)clear;

- (double)accumulator;

// arithmetic methods
- (void)add:(double)value;

- (void)subtract:(double)value;

- (void)multiply:(double)value;

- (void)divide:(double)value;

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

- (void)add:(double)value {
    accumulator += value;
}

- (void)subtract:(double)value {
    accumulator -= value;
}

- (void)multiply:(double)value {
    accumulator *= value;
}

- (void)divide:(double)value {
    if (value != 0.0) {
        accumulator /= value;
    } else {
        NSLog(@"Division by zero.");
        accumulator = NAN;
    }
    accumulator /= value;
}

@end

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [Calculator new];

        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);

        [deskCalc setAccumulator:value1];

        if (operator == '+') {
            [deskCalc add:value2];
        } else if (operator == '-') {
            [deskCalc subtract:value2];
        } else if (operator == '*') {
            [deskCalc multiply:value2];
        } else if (operator == '/') {
            [deskCalc divide:value2];
        } else {
            NSLog(@"Unknown operator.");
        }

        NSLog(@"%.2f", [deskCalc accumulator]);
        [deskCalc clear];
    }

    return 0;
}