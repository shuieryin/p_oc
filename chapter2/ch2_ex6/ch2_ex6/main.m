//
//  main.m
//  ch2_ex6
//
//  Created by Shuieryin on 3/6/16.
//  Copyright © 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int answer, result;
        
        answer = 100;
        result = answer - 10;
        
        NSLog(@"The result is %i\n", result + 5);
    }
    return 0;
}
