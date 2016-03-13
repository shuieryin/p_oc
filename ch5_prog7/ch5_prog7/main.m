//
//  main.m
//  ch5_prog7
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Find the greatest common divisor of two non-negative integers

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;

        NSLog(@"Please type in two non-negative integers.");;
        scanf("%u%u", &u, &v);

        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }

        NSLog(@"Their greatest common divisor is %u", u);
    }

    return 0;
}