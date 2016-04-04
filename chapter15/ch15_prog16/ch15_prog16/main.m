//
//  main.m
//  ch15_prog16
//
//  Created by Shuieryin on 3/28/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];

        // Store three entries in the glossary

        [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];

        // Retrieve and display them
        NSLog(@"abstract class: %@", [glossary objectForKey:@"abstract class"]);
        NSLog(@"adopt %@", [glossary objectForKey:@"adopt"]);
        NSLog(@"archiving: %@", [glossary objectForKey:@"archiving"]);
    }

    return 0;
}