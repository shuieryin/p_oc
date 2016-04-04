//
//  main.m
//  ch5_prog3
//
//  Created by Shuieryin on 3/11/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to generate a table of triangular numbers

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int n, triangularNumber;

        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@" n  Sum from 1 to n");
        NSLog(@"--  ---------------");

        triangularNumber = 0;

        for (n = 1; n <= 100; n++) {
            triangularNumber += n;
            NSLog(@"%3i        %i", n, triangularNumber);
        }
    }

    return 0;
}