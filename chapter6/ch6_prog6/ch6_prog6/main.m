//
//  main.m
//  ch6_prog6
//
//  Created by Shuieryin on 3/14/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to implement the sign function

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        long int number;
        short int sign;

        NSLog(@"Please type in a number: ");
        scanf("%li", &number);

        if (number < 0) {
            sign = -1;
        } else if (number == 0) {
            sign = 0;
        } else { // Must be positive
            sign = 1;
        }

        NSLog(@"Sign = %i", sign);
    }

    return 0;
}