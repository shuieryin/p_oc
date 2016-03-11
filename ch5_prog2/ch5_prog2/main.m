//
//  main.m
//  ch5_prog2
//
//  Created by Shuieryin on 3/11/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to calculate the 200th triangular number
// Introduction of the for statement

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int n, triangularNumber;

        triangularNumber = 0;

        for (n = 1; n <= 200; n++) {
            triangularNumber += n;
        }

        NSLog(@"The 200th triangular number is %i", triangularNumber);
        NSLog(@"n is %i", n);
    }

    return 0;
}