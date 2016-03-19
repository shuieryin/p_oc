//
//  main.m
//  ch10_prog3
//
//  Created by Shuieryin on 3/19/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// print the number of days in a month

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        typedef enum month {
            january = 1,
            february,
            march,
            april,
            may,
            june,
            july,
            august,
            september,
            october,
            november,
            december
        } Month;

        Month amonth;
        int days;

        NSLog(@"Enter month number: ");
        scanf("%i", &amonth);

        switch (amonth) {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }

        if (days != 0) {
            NSLog(@"Number of days is %i", days);
        }

        if (amonth == february) {
            NSLog(@"...or 29 if it's a leap year");
        }

        NSLog(@"feb: %i", february);
    }

    return 0;
}