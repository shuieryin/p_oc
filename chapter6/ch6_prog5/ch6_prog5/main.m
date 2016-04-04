//
//  main.m
//  ch6_prog5
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// This program dtermines if a year is a leap year

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int year;

        NSLog(@"Enter the year to be tested: ");
        scanf("%i", &year);

        if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
            NSLog(@"It's a leap year.");
        } else {
            NSLog(@"Nope,it's not a leap year.");
        }
    }

    return 0;
}