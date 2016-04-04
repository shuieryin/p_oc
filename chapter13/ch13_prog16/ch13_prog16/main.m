//
//  main.m
//  ch13_prog16
//
//  Created by Shuieryin on 3/23/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

void copyString(char *to, char *from) {
    for (; *from != '\0'; from++, to++) {
        *to = *from;
    }

    *to = '\0';
}

void copyString2(char *to, char *from) {

    while (*from) {
        *to++ = *from++;
    }

    *to = '\0';
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        // void copyString(char *to, char *from);
        char string1[] = "A string to be copied.";
        char string2[50];

        copyString(string2, string1);
        NSLog(@"%s", string2);

        copyString2(string2, "So is this.");
        NSLog(@"%s", string2);
    }

    return 0;
}