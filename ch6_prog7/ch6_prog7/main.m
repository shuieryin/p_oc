//
//  main.m
//  ch6_prog7
//
//  Created by Shuieryin on 3/14/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// This program categorizes a single character that is entered from the keyboard

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        char c;

        NSLog(@"Enter a single character:");
        scanf(" %c", &c); // add a space before %c to skip any white spaces

        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
            NSLog(@"It's an alphabetic character.");
        } else if (c >= '0' && c <= '9') {
            NSLog(@"It's a digit.");
        } else {
            NSLog(@"It's a special character.");
        }
    }

    return 0;
}