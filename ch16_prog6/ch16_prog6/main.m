//
//  main.m
//  ch16_prog6
//
//  Created by Shuieryin on 3/30/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Implement a basic copy utility

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = proc.arguments;

        // Check for two arguments on the command line
        if ([args count] != 3) {
            NSLog(@"Usage: %@ src dest", [proc processName]);
            return 1;
        }

        source = args[1];
        dest = args[2];

        // Make sure the source file can be read
        if (![fm isReadableFileAtPath:source]) {
            NSLog(@"Can't read %@", source);
            return 2;
        }

        // See if the destination file is a directory
        // if it is, add the source to the end of the destination
        [fm fileExistsAtPath:dest isDirectory:&isDir];

        if (isDir) {
            dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
        }

        // Remove the destination file if it already exists
        [fm removeItemAtPath:dest error:NULL];

        // Okay, time to perform the copy
        if (![fm copyItemAtPath:source toPath:dest error:NULL]) {
            NSLog(@"Copy failed!");
            return 3;
        }

        NSLog(@"Copy of %@ to %@ succeeded!", source, dest);
    }

    return 0;
}