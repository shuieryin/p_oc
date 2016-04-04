//
//  main.m
//  ch6_prog1
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Calculate the absolute value of an integer

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        int number;

        NSLog(@"Type in your number: ");
        scanf("%i", &number);

        if (number < 0) {
            number = -number;
        }

        NSLog(@"The absoulte value is %i", number);
    }

    return 0;
}