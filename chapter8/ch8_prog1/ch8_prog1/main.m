//
//  main.m
//  ch8_prog1
//
//  Created by Shuieryin on 3/16/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Simple example to illustrate inheritance

// ClassA declaration and definition

@interface ClassA : NSObject {
    int x;
}

- (void)initVar;

@end

@implementation ClassA

- (void)initVar {
    x = 100;
}

@end

// ClassB declaration and definition

@interface ClassB : ClassA
- (void)printVar;
@end

@implementation ClassB

- (void)printVar {
    NSLog(@"x = %i", x);
}

@end

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        ClassB *b = [ClassB new];

        [b initVar]; // will use inherited method
        [b printVar]; // reveal value of x;
    }

    return 0;
}