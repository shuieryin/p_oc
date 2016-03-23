//
//  main.m
//  ch13_prog9
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        __block int foo = 10;

        void(^printFoo)(void) = ^(void) {
            NSLog(@"foo = %i", foo);
            foo = 20;
        };

        foo = 15;

        printFoo();
        NSLog(@"foo = %i", foo);
    }

    return 0;
}