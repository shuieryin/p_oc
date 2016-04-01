//
//  main.m
//  ch16_prog8
//
//  Created by Shuieryin on 4/1/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Append the file "fileA" to the end of "fileB"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        [[NSFileManager defaultManager] changeCurrentDirectoryPath:@"/Users/shuieryin/Workspaces/p_oc/ch16_prog8/ch16_prog8"];
        NSFileHandle *inFile, *outFile;
        NSData *buffer;

        // Open the file fileA for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath:@"fileA"];

        if (inFile == nil) {
            NSLog(@"Open of fileA for reading failed");
            return 1;
        }

        // Open the file fileB for updating
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"fileB"];

        if (outFile == nil) {
            NSLog(@"Open of fileB for writing failed");
            return 2;
        }

        // Seek to the end of outFile
        [outFile seekToEndOfFile];

        // Read inFile and write its contents to outFile
        buffer = [inFile readDataToEndOfFile];
        [outFile writeData:buffer];

        // Close the two files
        [inFile closeFile];
        [outFile closeFile];

        // Verify its contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"fileB" encoding:NSUTF8StringEncoding error:NULL]);
    }

    return 0;
}