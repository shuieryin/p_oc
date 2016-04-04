//
//  main.m
//  ch15_prog17
//
//  Created by Shuieryin on 3/28/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];

        // Store three entries in the glossary

        glossary[@"abstract class"] = @"A class defined so other classes can inherit from it";
        glossary[@"adopt"] = @"To implement all the methods defined in a protocol";
        glossary[@"archiving"] = @"Storing an object for later use";

        // Retrieve and display them
        NSLog(@"abstract class: %@", glossary[@"abstract class"]);
        NSLog(@"adopt %@", glossary[@"adopt"]);
        NSLog(@"archiving: %@", glossary[@"archiving"]);
    }

    return 0;
}