//
//  main.m
//  prog1
//
//  Created by Shuieryin on 3/5/16.
//  Copyright © 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun!");
        NSLog(@"Testing...\n..1\n...2\n....3");
        
        int value1, value2, sum;
        
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
    }
    return 0;
}
