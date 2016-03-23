//
//  main.m
//  ch13_prog8
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int foo = 10;

        void(^printFoo)(void) = ^(void) {
            NSLog(@"foo = %i", foo);
        };

        foo = 15;

        printFoo();
    }

    return 0;
}