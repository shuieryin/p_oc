//
//  main.m
//  ch19_prog11
//
//  Created by Shuieryin on 4/3/16.
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

        // Make a deep copy using the archiver
        dataArray2 = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:dataArray]];

        mStr = dataArray2[0];
        [mStr appendString:@"ONE"];

        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray) {
            NSLog(@"%@", elem);
        }

        NSLog(@"\ndataArray2: ");
        for (NSString *elem in dataArray2) {
            NSLog(@"%@", elem);
        }
    }

    return 0;
}