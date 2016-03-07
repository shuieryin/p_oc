//
//  main.m
//  ch3_prog3-2
//
//  Created by GuoCollin on 3/6/16.
//  Copyright © 2016 GuoCollin. All rights reserved.
//

// Program to work with fractions - class version

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
        Fraction *myFraction = [[Fraction alloc] init];
        
        // Set fraction to 1/3
        
        [myFraction setNumerator : 1];
        [myFraction setDenominator : 3];
        
        // Display the fraction using the print method
        [myFraction print];
    }
    return 0;
}
