//
//  main.m
//  ch16_prog9
//
//  Created by Shuieryin on 4/1/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Read the contents of a file stored at a URL

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSURL *myURL = [NSURL URLWithString:@"http://classroomM.com"];

        NSString *myHomePage = [NSString stringWithContentsOfURL:myURL encoding:NSASCIIStringEncoding error:NULL];
        NSLog(@"%@", myHomePage);
    }

    return 0;
}