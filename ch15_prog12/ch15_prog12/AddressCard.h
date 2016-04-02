//
// Created by Shuieryin on 3/28/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AddressCard : NSObject

@property(copy, nonatomic) NSString *name, *email;

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail;

- (void)print;

- (NSComparisonResult)compareNames:(id)element;

@end