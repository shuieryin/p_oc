//
//  main.m
//  ch13_prog13
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to illustrate structure pointers

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        struct {
            int month;
            int day;
            int year;
        } today, *datePtr;

        datePtr = &today;
        datePtr->month = 9;
        datePtr->day = 25;
        datePtr->year = 2014;

        NSLog(@"Today's date is %i/%i/%.2i.", datePtr->month, datePtr->day, datePtr->year % 100);
    }

    return 0;
}