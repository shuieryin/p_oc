//
//  main.m
//  ch5_prog4
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber;

        NSLog(@"What triangular number do you want?");
        scanf("%i", &number);

        triangularNumber = 0;
        for (n = 1; n <= number; n++) {
            triangularNumber += n;
        }

        NSLog(@"Trianuglar number %i is %i\n", number, triangularNumber);
    }

    return 0;
}