//
//  main.m
//  ch13_prog7
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Block to calculate the nth triangular number

void (^calculateTriangularNumber)(int) = ^(int n) {
    int i, triangularNumber = 0;

    for (i = 1; i <= n; i++) {
        triangularNumber += i;
    }

    NSLog(@"Triangular number %i is %i", n, triangularNumber);
};

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        calculateTriangularNumber(10);
        calculateTriangularNumber(20);
        calculateTriangularNumber(50);
    }

    return 0;
}