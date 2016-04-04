//
// Created by Shuieryin on 4/4/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fraction.h"

@interface Calculator : NSObject

@property(strong, nonatomic) Fraction *operand1;
@property(strong, nonatomic) Fraction *operand2;
@property(strong, nonatomic) Fraction *accumulator;

- (Fraction *)performOperation:(char)op;

- (void)clear;

@end