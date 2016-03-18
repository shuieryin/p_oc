//
//  main.m
//  ch9_prog5
//
//  Created by Shuieryin on 3/18/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSArray *myArray = [NSArray array];

        @try {
            [myArray objectAtIndex:2];
        } @catch (NSException *exception) {
            NSLog(@"Caught %@%@", exception.name, exception.reason);
        } @finally {
            NSLog(@"done.");
        }
    }

    return 0;
}