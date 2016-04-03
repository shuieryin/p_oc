//
//  main.m
//  ch19_prog1
//
//  Created by Shuieryin on 4/3/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        [fm changeCurrentDirectoryPath:@"/Users/shuieryin/Workspaces/p_oc/ch19_prog1/ch19_prog1"];

        NSDictionary *glossary = @{
                @"abstract class" : @"A class defined so other classes can inherit from it.",
                @"adopt" : @"To implement all the methods defined in a protocol",
                @"archiving" : @"Storing an object for later user. "
        };


        if (![glossary writeToFile:@"glossary" atomically:YES]) {
            NSLog(@"Save to file failed!");
        }

        NSDictionary *glossaryReadBack = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];

        for (NSString *key in glossaryReadBack) {
            NSLog(@"%@: %@", key, glossaryReadBack[key]);
        }
    }

    return 0;
}