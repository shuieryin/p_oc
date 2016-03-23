//
//  main.m
//  ch13_prog1
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Program to generate the first 15 Fibonacci numbers

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int size = 80;

        long long int Fibonacci[80] = {0, 1}, i;

        //Fibonacci[0] = 0; /* by definition */
        //Fibonacci[1] = 1; /* ditto */

        for (i = 2; i < size; i++) {
            Fibonacci[i] = Fibonacci[i - 2] + Fibonacci[i - 1];
        }

        for (i = 0; i < size; i++) {
            NSLog(@"%lli", Fibonacci[i]);
        }
    }

    return 0;
}