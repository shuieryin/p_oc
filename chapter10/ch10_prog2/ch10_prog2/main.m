//
//  main.m
//  ch10_prog2
//
//  Created by Shuieryin on 3/19/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int gGlobalVar = 0;

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Fraction *a, *b, *c;

        NSLog(@"Fractions allocated: %i", [Fraction count]);

        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];

        NSLog(@"Fractions allocated: %i", [Fraction count]);
    }

    return 0;
}