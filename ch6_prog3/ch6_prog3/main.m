//
//  main.m
//  ch6_prog3
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to determine if a number is even or odd

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int number_to_test, remainder;

        NSLog(@"Enter you number to be tested: ");
        scanf("%i", &number_to_test);

        remainder = number_to_test % 2;

        if (remainder == 0) {
            NSLog(@"The number is even.");
        } else {
            NSLog(@"The number is odd.");
        }
    }

    return 0;
}