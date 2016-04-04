//
//  main.m
//  ch15_prog6
//
//  Created by Shuieryin on 3/24/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Basic String Operations - Mutable Strings

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        NSRange substr;

        // Create mutable string from nonmutable
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@", mstr);

        // Instert characters
        [mstr insertString:@" mutable" atIndex:7];
        NSLog(@"%@", mstr);

        // Effective concatenation if insert at end
        [mstr insertString:@" and string B" atIndex:[mstr length]];
        NSLog(@"%@", mstr);

        // Or can use appendString directly
        [mstr appendString:@" and string C"];
        NSLog(@"%@", mstr);

        // Delete substring based on range
        [mstr deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"%@", mstr);

        // Find range first and then use it for deletion
        substr = [mstr rangeOfString:@"string B and "];
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange:substr];
            NSLog(@"%@", mstr);
        }

        // Set the mutable string directly
        [mstr setString:@"This is string A"];
        NSLog(@"%@", mstr);

        // Now let's replace a range of chars with another
        [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
        NSLog(@"%@", mstr);

        // Search and replace
        search = @"This is";
        replace = @"An example of";

        substr = [mstr rangeOfString:search];
        if (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            NSLog(@"%@", mstr);
        }

        // Search and replace all occurrences
        search = @"a";
        replace = @"X";

        [mstr replaceOccurrencesOfString:search
                              withString:replace
                                 options:nil
                                   range:NSMakeRange(0, [mstr length])];


        /*substr = [mstr rangeOfString:search];

        while (substr.location != NSNotFound) {
            [mstr replaceCharactersInRange:substr withString:replace];
            substr = [mstr rangeOfString:search];
        }*/

        NSLog(@"%@", mstr);
    }

    return 0;
}