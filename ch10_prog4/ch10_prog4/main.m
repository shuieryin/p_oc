//
//  main.m
//  ch10_prog4
//
//  Created by Shuieryin on 3/19/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Bitwise operators illustrated

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        unsigned int w1 = 0xA0A0A0A0, w2 = 0xFFFF0000, w3 = 0x00007777;

        NSLog(@"%x %x %x", w1 & w2, w1 | w2, w1 ^ w2);
        NSLog(@"%x %x %x", ~w1, ~w2, ~w3);
        NSLog(@"%x %x %x", w1 ^ w1, w1 & ~w2, w1 | w2 | w3);
        NSLog(@"%x %x", w1 | w2 & w3, w1 | w2 & ~w3);
        NSLog(@"%x %x", ~(~w1 & ~w2), ~(~w1 | ~w2));
    }

    return 0;
}