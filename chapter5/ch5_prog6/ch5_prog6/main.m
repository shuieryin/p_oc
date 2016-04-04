//
//  main.m
//  ch5_prog6
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// This program introduces the while statement

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int count = 1;

        while (count <= 5) {
            NSLog(@"%i", count);
            ++count;
        }
    }

    return 0;
}