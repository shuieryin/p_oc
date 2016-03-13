//
//  main.m
//  ch5_ex8
//
//  Created by Shuieryin on 3/13/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        long int number, total_number = 0;

        NSLog(@"Enter your number.");
        scanf("%li", &number);

        while (number != 0) {
            total_number += number % 10;
            number /= 10;
        }

        NSLog(@"The total of single digit number is %li", total_number);
    }

    return 0;
}