//
//  main.m
//  ch15_prog7
//
//  Created by Shuieryin on 3/28/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    int i;
    @autoreleasepool {
        // Create an array to contain the month names

        NSArray *monthNames = [NSArray arrayWithObjects:
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
                @"December",
                        nil
        ];

        // Now list all the elements in the array

        NSLog(@"Month  Name");
        NSLog(@"=====  ====");

        for (i = 0; i < 12; ++i) {
            NSLog(@" %3i    %@", i + 1, [monthNames objectAtIndex:i]);
        }
    }

    return 0;
}