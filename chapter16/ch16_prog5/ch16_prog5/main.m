//
//  main.m
//  ch16_prog5
//
//  Created by Shuieryin on 3/30/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Some basic path operations

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *fName = @"path.m";
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *path, *tempdir, *extension, *homedir, *fullpath;

        NSArray *components;

        // Get the temporary working directory
        tempdir = NSTemporaryDirectory();
        NSLog(@"Temporary Directory is %@", tempdir);

        // Extract the base directory from current directory
        path = [fm currentDirectoryPath];
        NSLog(@"Base dir is %@", [path lastPathComponent]);

        // Create a full path to the file fName in current directory
        fullpath = [path stringByAppendingPathComponent:fName];
        NSLog(@"fullpath to %@ is %@", fName, fullpath);

        // Get the filename extension
        extension = [fullpath pathExtension];
        NSLog(@"extension for %@ is %@", fullpath, extension);

        // Get user's home directory
        homedir = NSHomeDirectory();
        NSLog(@"Your home directory is %@", homedir);

        // Divide a path into its components
        components = [homedir pathComponents];

        for (path in components) {
            NSLog(@"%@", path);
        }
    }

    return 0;
}