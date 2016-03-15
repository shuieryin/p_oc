//
//  main.m
//  ch7_prog2
//
//  Created by Shuieryin on 3/15/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [Fraction new];

        [aFraction setTo:100 :200];
        [aFraction print];

        NSLog(@"%g", [aFraction convertToNum]);

        [aFraction setTo:1 :4];
        [aFraction print];

        NSLog(@"+");

        Fraction *bFraction = [Fraction new];
        [bFraction setTo:1 :2];
        [bFraction print];

        NSLog(@"=");

        [aFraction add:bFraction];
        [aFraction print];

        NSLog(@"Reduced:");
        [aFraction reduce];
        [aFraction print];
    }

    return 0;
}