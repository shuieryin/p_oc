//
//  main.m
//  ch3_prog3-2
//
//  Created by Shuieryin on 3/6/16.
//  Copyright © 2016 Shuieryin. All rights reserved.
//

// Program to work with fractions - cont'd

#import <Foundation/Foundation.h>

// ---- @interface sectino ----

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator : (int) n;
-(void) setDenominator : (int) d;

@end

// ---- @implementation section ----

@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    NSLog(@"The value of myFraction is: %i/%i.", numerator, denominator);
}

-(void) setNumerator:(int) n {
    numerator = n;
}

-(void) setDenominator:(int) d {
    denominator = d;
}

@end

// ---- program section ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of a Fraction
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        
        // Set 1st fraction to 1/3
        
        [frac1 setNumerator : 2];
        [frac1 setDenominator : 3];
        
        // Set 2st fraction to 1/3
        
        [frac2 setNumerator : 3];
        [frac2 setDenominator : 7];
        
        // Display the fractions
        [frac1 print];
        [frac2 print];
    }
    return 0;
}
