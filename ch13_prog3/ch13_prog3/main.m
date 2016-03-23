//
//  main.m
//  ch13_prog3
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

void printMessage(void) {
    NSLog(@"Programming is fun.");
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        printMessage();
    }

    return 0;
}