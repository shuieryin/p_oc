//
//  main.m
//  ch5_prog8
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to reverse the digits of a number

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        long int number, reversed_number = 0;

        NSLog(@"Enter your number.");
        scanf("%li", &number);

        while (number != 0) {
            reversed_number *= 10;
            reversed_number += number % 10;
            number /= 10;
        }

        NSLog(@"The reversed number is %li", reversed_number);
    }

    return 0;
}