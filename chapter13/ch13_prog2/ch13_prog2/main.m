//
//  main.m
//  ch13_prog2
//
//  Created by Shuieryin on 3/22/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        char word[] = {'H', 'e', 'l', 'l', 'o', '!'};
        int i;

        for (i = 0; i < 6; i++) {
            NSLog(@"%c", word[i]);
        }
    }

    return 0;
}