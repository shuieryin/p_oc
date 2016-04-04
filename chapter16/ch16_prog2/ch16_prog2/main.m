//
//  main.m
//  ch16_prog2
//
//  Created by Shuieryin on 3/30/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *filePath = @"/Users/shuieryin/Workspaces/p_oc/ch16_prog2/";
        NSFileManager *fm;
        NSData *fileData;

        fm = [NSFileManager defaultManager];

        // Read the file newfile2
        fileData = [fm contentsAtPath:[filePath stringByAppendingString:@"newfile2"]];

        if (fileData == nil) {
            NSLog(@"File read failed!");
            return 1;
        }

        // Write the data to newfile3
        if (![fm createFileAtPath:[filePath stringByAppendingString:@"newfile3"] contents:fileData attributes:nil]) {
            NSLog(@"Couldn't create the copy!");
            return 2;
        }

        NSLog(@"File copy was successful!");
    }

    return 0;
}