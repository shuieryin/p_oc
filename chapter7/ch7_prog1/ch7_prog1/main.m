//
//  main.m
//  ch7_prog1
//
//  Created by Shuieryin on 3/15/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [Fraction new];

        // set fraction to 1/3

        myFraction.numerator = 1;
        myFraction.denominator = 3;

        // display the fraction

        NSLog(@"The value of myFraction is:");
        [myFraction print];

        NSLog(@"%g", [myFraction convertToNum]);
    }

    return 0;
}