//
//  main.m
//  ch16_prog3
//
//  Created by Shuieryin on 3/30/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Some basic directory operations

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *dirName = @"testdir";
        NSString *path;
        NSFileManager *fm;

        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];

        // Get current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);

        // Create a new directory
        if (![fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL]) {
            NSLog(@"Couldn't create directory!");
            return 1;
        }

        // If "newdir" exist then delete it
        if ([fm fileExistsAtPath:@"newdir" isDirectory:NULL]) {
            [fm removeItemAtPath:@"newdir" error:NULL];
        }

        // Rename the new directory
        if (![fm moveItemAtPath:dirName toPath:@"newdir" error:NULL]) {
            NSLog(@"Directory rename failed!");
            return 2;
        }

        // Change directory into the new directory
        if (![fm changeCurrentDirectoryPath:@"newdir"]) {
            NSLog(@"Change directory failed!");
            return 3;
        }

        // Now get and display current working directory
        path = [fm currentDirectoryPath];
        NSLog(@"Current directory path is %@", path);

        NSLog(@"All operations were successful!");
    }

    return 0;
}