//
//  main.m
//  ch9_prog2
//
//  Created by Shuieryin on 3/18/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Illustrate Dynamic Typing and Binding

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [Fraction new];
        Complex *c1 = [Complex new];

        [f1 setTo:2 over:5];
        [c1 setReal:10.0 andImaginary:2.5];

        // first dataValue gets a fraction

        dataValue = f1;
        [dataValue print];

        // now dataValue gets a complex number
        dataValue = c1;
        [dataValue print];
    }

    return 0;
}