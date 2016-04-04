//
//  main.m
//  ch18_prog2
//
//  Created by Shuieryin on 4/2/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                [NSMutableString stringWithString:@"one"],
                [NSMutableString stringWithString:@"two"],
                [NSMutableString stringWithString:@"three"],
                        nil
        ];

        NSMutableArray *dataArray2;
        NSMutableString *mStr;

        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }

        // make a copy, then change one of the strings
        dataArray2 = [dataArray mutableCopy];

        mStr = dataArray[0];
        [mStr appendString:@"ONE"];

        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }

        NSLog(@"dataArray2:  ");
        for (NSString *elem in dataArray2) {
            NSLog(@"   %@", elem);
        }
    }

    return 0;
}