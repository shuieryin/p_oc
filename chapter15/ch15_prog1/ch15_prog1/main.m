//
//  main.m
//  ch15_prog1
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;

        // integer value;
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);

        // long value
        myNumber = @0xabcdef;
        NSLog(@"%lx", [myNumber longValue]);

        // float value
        floatNumber = @100.00f;
        NSLog(@"%g", [floatNumber floatValue]);

        // double value
        myNumber = @12345e+15;
        NSLog(@"%lg", [myNumber doubleValue]);

        // Wrong access here
        NSLog(@"%li", (long) [myNumber integerValue]);

        // Test two Numbers for equality
        if ([intNumber isEqualToNumber:floatNumber]) {
            NSLog(@"Numbers are equal");
        } else {
            NSLog(@"Numbers are not equal");
        }

        // Test if one Number is <, ==, or > second Number
        if ([intNumber compare:myNumber] == NSOrderedAscending) {
            NSLog(@"First number is less than second");
        }
    }

    return 0;
}