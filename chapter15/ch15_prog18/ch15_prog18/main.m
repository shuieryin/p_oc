//
//  main.m
//  ch15_prog18
//
//  Created by Shuieryin on 3/28/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSDictionary *glossary = @{
                @"abstract class" : @"A class defined so other classes can inherit from it",
                @"adopt" : @"To implement all the methods defined in a protocol",
                @"archiving" : @"Storing an object for later use"
        };

        // Print all key-value pairs from the dictionary

        for (NSString *key in glossary) {
            NSLog(@"%@: %@", key, glossary[key]);
        }
    }

    return 0;
}