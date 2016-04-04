//
//  main.m
//  ch8_prog6
//
//  Created by Shuieryin on 3/18/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Overriding Methods
// ClassA declaration and definition

@interface ClassA : NSObject {
    int x; // Will be inherited by subclasses
}

- (void)initVar;

- (void)printVar;

@end

@implementation ClassA

- (void)initVar {
    x = 100;
}

- (void)printVar {
    NSLog(@"x = %i", x);
}

@end

// ClassB declaration and definition
@interface ClassB : ClassA

- (void)initVar;

- (void)printVar;

@end

@implementation ClassB

- (void)initVar { // added method
    x = 200;
}

- (void)printVar {
    NSLog(@"x = %i", x);
}

@end

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        ClassB *b1 = [ClassB new];

        [b1 initVar]; // uses overriding method in B

        [b1 printVar]; // reveal value of x;

        ClassA *a = [ClassA new];
        ClassB *b = [ClassB new];

        [a initVar]; // uses ClassA mehtod;
        [a printVar]; // reveal value of x;

        [b initVar]; // use overriding ClassB method
        [b printVar]; // reveal value of x;
    }

    return 0;
}