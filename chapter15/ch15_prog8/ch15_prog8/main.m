//
//  main.m
//  ch15_prog8
//
//  Created by Shuieryin on 3/28/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    unsigned int i;
    @autoreleasepool {
        // Create an array to contain the month names

        NSArray *monthNames = @[
                @"January",
                @"Febuary",
                @"March",
                @"April",
                @"May",
                @"June",
                @"July",
                @"August",
                @"September",
                @"October",
                @"November",
                @"December"
        ];

        // Now list all the elements in the array

        NSLog(@"Month   Name");
        NSLog(@"=====   ====");

        for (i = 0; i < 12; ++i) {
            NSLog(@" %3i    %@", i + 1, monthNames[i]);
        }

        // Look how NSLog can display it with a single %@ format

        NSLog(@"====== Using a single NSLog");
        NSLog(@"%@", monthNames);
    }

    return 0;
}