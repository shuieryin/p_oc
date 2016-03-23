//
//  main.m
//  ch13_prog11
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to illustrate pointers

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int count = 10, x, *intPtr;

        intPtr = &count;
        x = *intPtr;

        NSLog(@"count=%i,x=%i,intPtr=%p", count, x, intPtr);
    }

    return 0;
}