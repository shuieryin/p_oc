//
//  main.m
//  ch16_prog4
//
//  Created by Shuieryin on 3/30/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Enumerate the contents of a directory

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *path;
        NSFileManager *fm;
        NSDirectoryEnumerator *dirEnum;
        NSArray *dirArray;

        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];

        // Get current working directory path
        path = [fm currentDirectoryPath];

        // Enumerate the directory
        dirEnum = [fm enumeratorAtPath:path];

        NSLog(@"Contents of %@", path);

        while ((path = [dirEnum nextObject]) != nil) {
            NSLog(@"%@", path);
        }

        // Another way to enumerate a directory
        dirArray = [fm contentsOfDirectoryAtPath:[fm currentDirectoryPath] error:NULL];
        NSLog(@"Contents using contentsOfDirectoryAtPath:error:");

        for (path in dirArray) {
            NSLog(@"%@", path);
        }
    }

    return 0;
}