//
//  main.m
//  ch5_prog1
//
//  Created by Shuieryin on 3/11/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to calculate the eighth triangular number

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int triangularNumber;

        triangularNumber = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;
        NSLog(@"The eighth triangular number is %i", triangularNumber);
    }

    return 0;
}