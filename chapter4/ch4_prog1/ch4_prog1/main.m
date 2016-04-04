//
//  main.m
//  ch4_prog1
//
//  Created by Shuieryin on 3/7/16.
//  Copyright © 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        long int longIntegerVar = 1012312316234231234;
        long long int longLongIntegerVar = 2234234231234213123;
        long double longDoubleVar = 8.443133423423234e+11;
        short int shortIntegerVar = 32767;
        unsigned short int unsignedShortIntegerVar = 65535;
        
        NSLog(@"integerVar = %i", integerVar);
        NSLog(@"floatingVar = %f", floatingVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        NSLog(@"charVar = %c", charVar);
        NSLog(@"longIntegerVar = %li", longIntegerVar);
        NSLog(@"longLongIntegerVar = %lli",longLongIntegerVar);
        NSLog(@"longDoubleVar = %Lg", longDoubleVar);
        NSLog(@"shortIntegerVar = %hi", shortIntegerVar);
        NSLog(@"unsignedShortIntegerVar = %hu", unsignedShortIntegerVar);
    }
    return 0;
}
