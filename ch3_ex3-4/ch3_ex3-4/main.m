//
//  main.m
//  ch3_prog3-2
//
//  Created by GuoCollin on 3/6/16.
//  Copyright © 2016 GuoCollin. All rights reserved.
//

// Program to work with fractions - cont'd

#import <Foundation/Foundation.h>

// ---- @interface sectino ----

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator : (int) n;
-(void) setDenominator : (int) d;
-(int) numerator;
-(int) denominator;

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

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

@end

// ---- program section ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [Fraction new]; //[[Fraction alloc] init];
        
        // Set fraction to 1/3
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // Display the fraction using our two new methods
        NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
        
    }
    return 0;
}
