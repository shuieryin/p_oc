//
//  main.m
//  ch9_prog3
//
//  Created by Shuieryin on 3/18/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Square *mySquare = [Square new];

        // isMemberOf:
        if ([mySquare isMemberOfClass:[Square class]]) {
            NSLog(@"mySquare is a member of Square class");
        }

        if ([mySquare isMemberOfClass:[Rectangle class]]) {
            NSLog(@"mySquare is a member of Rectangle class");
        }

        if ([mySquare isMemberOfClass:[NSObject class]]) {
            NSLog(@"mySquare is a member of NSObject class");
        }

        // isKindOf:
        if ([mySquare isKindOfClass:[Square class]]) {
            NSLog(@"mySquare is a kind of Square class");
        }

        if ([mySquare isKindOfClass:[Rectangle class]]) {
            NSLog(@"mySquare is a kind of Rectangle class");
        }

        if ([mySquare isKindOfClass:[NSObject class]]) {
            NSLog(@"mySquare is a kind of NSObject class");
        }

        // respondsTo:
        if ([mySquare respondsToSelector:@selector(setSide:)]) {
            NSLog(@"mySquare responds to setSide: method");
        }

        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)]) {
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        }

        if ([Square respondsToSelector:@selector(alloc)]) {
            NSLog(@"mySquare responds to alloc method");
        }

        // instancesRespondTo:
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)]) {
            NSLog(@"Instances of Rectangle respond to setSide: method");
        }

        if ([Square instancesRespondToSelector:@selector(setSide:)]) {
            NSLog(@"Instances of Square respond to setSide: method");
        }

        if ([Square isSubclassOfClass:[NSObject class]]) {
            NSLog(@"Square is a subclass of a rectangle");
        }
    };

    return 0;
}