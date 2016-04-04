//
//  main.m
//  ch16_prog7
//
//  Created by Shuieryin on 3/31/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Some basic file handle operations
// Assumes the existence of a file called "testfile"
// in the current working directory

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSFileManager *fm = [NSFileManager defaultManager];
        NSData *buffer;

        [fm changeCurrentDirectoryPath:@"/Users/shuieryin/Workspaces/p_oc/ch16_prog7/ch16_prog7"];

        // Open the file testfile for reading

        inFile = [NSFileHandle fileHandleForReadingAtPath:@"testfile"];

        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed");
            return 1;
        }

        [fm createFileAtPath:@"testout" contents:nil attributes:nil];

        // Now open outfile for writing
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout"];

        if (outFile == nil) {
            NSLog(@"Open of testout for writing failed");
            return 2;
        }

        // Truncate the output file since it may contain data
        [outFile truncateFileAtOffset:0];

        // Read the data from inFile and write it to outFile
        buffer = [inFile readDataToEndOfFile];

        [outFile writeData:buffer];

        // Close the two files
        [inFile closeFile];
        [outFile closeFile];

        // Verify the file's contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout" encoding:NSUTF8StringEncoding error:NULL]);
    }

    return 0;
}