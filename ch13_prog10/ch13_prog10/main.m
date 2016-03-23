//
//  main.m
//  ch13_prog10
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        struct date {
            int month;
            int day;
            int year;
        } today = {
                .month = 9,
                .day = 25,
                .year = 2014
        };

        NSLog(@"Today's date is %.2i/%i/%.2i.", today.month, today.day, today.year);
    }

    return 0;
}