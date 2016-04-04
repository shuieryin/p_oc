//
// Created by Shuieryin on 3/15/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Fraction : NSObject

@property int numerator, denominator;

- (instancetype)init;

- (instancetype)initWidth:(int)n over:(int)d;

- (void)print;

- (void)setTo:(int)n over:(int)d;

- (double)convertToNum;

- (Fraction *)add:(Fraction *)f;

- (Fraction *)subtract:(Fraction *)f;

- (Fraction *)multiply:(Fraction *)f;

- (Fraction *)divide:(Fraction *)f;

- (void)reduce;

+ (Fraction *)allocF;

+ (int)count;

- (NSString *)convertToString;

@end