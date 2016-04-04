//
//  main.m
//  ch16_prog1
//
//  Created by Shuieryin on 3/30/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Basic File operations
// Assumes the existence of a file called "testfile"
// in the current directory

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *filePath = @"/Users/shuieryin/Workspaces/p_oc/ch16_prog1/";
        NSString *fName = [filePath stringByAppendingString:@"testfile"];
        NSFileManager *fm;
        NSDictionary *attr;

        // Need to create an instance of the file manager
        fm = [NSFileManager defaultManager];


        // Let's make sure our test file exists first
        if (![fm fileExistsAtPath:fName]) {
            NSLog(@"File doesn't exist!");
            return 1;
        }

        // Now let's make a copy
        if (![fm copyItemAtPath:fName toPath:[filePath stringByAppendingString:@"newfile"] error:NULL]) {
            NSLog(@"File Copy failed!");
            return 2;
        }

        // Now let's test to see if the two files are equal
        if (![fm contentsEqualAtPath:fName andPath:[filePath stringByAppendingString:@"newfile"]]) {
            NSLog(@"Files are Not Equal!");
            return 3;
        }

        // Now let's rename the copy
        if (![fm moveItemAtPath:[filePath stringByAppendingString:@"newfile"] toPath:[filePath stringByAppendingString:@"newfile2"] error:NULL]) {
            NSLog(@"File rename Failed");
            return 4;
        }

        // Get the size of the newfile2
        if ((attr = [fm attributesOfItemAtPath:[filePath stringByAppendingString:@"newfile2"] error:NULL]) == nil) {
            NSLog(@"Couldn't get file attributes");
            return 5;
        }

        NSLog(@"File size is %llu bytes", [attr[NSFileSize] unsignedLongLongValue]);

        // And finally, let's delete the original file
        if (![fm removeItemAtPath:fName error:NULL]) {
            NSLog(@"file removal failed");
            return 6;
        }

        NSLog(@"All operations were successful");

        // Display the contents of the newly created file

        NSLog(@"%@", [NSString stringWithContentsOfFile:[filePath stringByAppendingString:@"newfile2"] encoding:NSUTF8StringEncoding error:NULL]);
    }

    return 0;
}