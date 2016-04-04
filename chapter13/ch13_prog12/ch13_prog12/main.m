//
//  main.m
//  ch13_prog12
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        char c = 'Q';
        char *charPtr = &c;
        char *x = charPtr;

        NSLog(@"%p %p", charPtr, x);

        NSLog(@"%c %c %c", c, *charPtr, *x);

        c = '/';
        NSLog(@"%c %c %c", c, *charPtr, *x);

        *charPtr = '(';
        NSLog(@"%c %c %c", c, *charPtr, *x);

        *x = ')';
        NSLog(@"%c %c %c", c, *charPtr, *x);
    }

    return 0;
}