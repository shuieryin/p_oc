//
//  main.m
//  ch8_prog2
//
//  Created by Shuieryin on 3/16/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [Rectangle new];

        [myRect setWidth:5
               andHeight:8];

        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);

        Square *mySquare = [Square new];
        [mySquare setSide:5];
        NSLog(@"Square area = %i, side = %i", [mySquare area], [mySquare side]);
    }

    return 0;
}