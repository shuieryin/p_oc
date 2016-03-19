//
//  main.m
//  ch10_prog1
//
//  Created by Shuieryin on 3/19/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int gGlobalVar = 5;

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Fraction *a, *b;

        a = [[Fraction alloc] initWidth:1 over:3];
        b = [[Fraction alloc] initWidth:3 over:7];

        [a print];
        [b print];

        NSLog(@"%i", gGlobalVar);
        [a setGlobalVar:12];
        NSLog(@"%i", gGlobalVar);
    }

    return 0;
}