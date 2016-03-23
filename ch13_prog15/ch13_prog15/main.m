//
//  main.m
//  ch13_prog15
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Function to sum the elements of an integer array

long int arraySum(long int array[], int n) {
    long int sum = 0, *ptr;
    ptr = array;
    long int *arrayEnd = array + n;

    for (; ptr < arrayEnd; ptr++) {
        sum += *ptr;
    }

    return sum;
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        //int arraySum(int array[], int n);
        long int values[10] = {3, 7, -9, 3, 6, -1, 7, 9, 1, -5};

        NSLog(@"The sum is %li", arraySum(values, 10));

        NSLog(@"%li", *values);
        NSLog(@"%li", *&values[0]);
    }

    return 0;
}