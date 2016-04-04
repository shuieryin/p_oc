//
//  main.m
//  ch6_prog10
//
//  Created by Shuieryin on 3/14/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to generate a table of prime numbers

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int p, pHalf, d;
        BOOL isPrime;

        for (p = 2; p <= 800; p++) {
            isPrime = YES;

            pHalf = p / 2 + 1;

            for (d = 2; d < pHalf; d++) {
                if (p % d == 0) {
                    isPrime = NO;
                }
            }

            if (isPrime) {
                NSLog(@"%i", p);
            }
        }
    }

    return 0;
}