//
//  main.m
//  ch18_prog3
//
//  Created by Shuieryin on 4/2/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Copying fractions
#import "Fraction.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2;

        [f1 setTo:2 over:5];
        f2 = [f1 copy];

        [f2 setTo:1 over:3];

        [f1 print];
        [f2 print];

        f1 = NULL;
        [f1 print];
    }

    return 0;
}