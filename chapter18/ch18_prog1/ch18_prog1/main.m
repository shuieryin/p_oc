//
//  main.m
//  ch18_prog1
//
//  Created by Shuieryin on 4/2/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
        NSMutableArray *dataArray2;

        // simple assignment
        dataArray2 = dataArray;
        [dataArray2 removeObjectAtIndex:0];

        NSLog(@"dataArray:  ");
        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }

        NSLog(@"dataArray2: ");

        for (NSString *elem in dataArray2) {
            NSLog(@"   %@", elem);
        }

        // try a copy, then remove the first element from the copy
        dataArray2 = [dataArray mutableCopy];
        [dataArray2 removeObjectAtIndex:0];

        NSLog(@"dataArray:  ");

        for (NSString *elem in dataArray) {
            NSLog(@"   %@", elem);
        }

        NSLog(@"dataArray2: ");

        for (NSString *elem in dataArray2) {
            NSLog(@"   %@", elem);
        }
    }

    return 0;
}