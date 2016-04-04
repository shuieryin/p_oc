//
//  main.m
//  ch13_prog6
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        void(^printMessage)(void) =
                ^(void) {
                    NSLog(@"Programming is fun.");
                };

        printMessage();
    }

    return 0;
}