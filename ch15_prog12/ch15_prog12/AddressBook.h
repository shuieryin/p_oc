//
// Created by Shuieryin on 3/28/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"


@interface AddressBook : NSObject

@property(nonatomic, copy) NSString *bookName;
@property(nonatomic, strong) NSMutableArray *book;

- (instancetype)initWithName:(NSString *)name;

- (void)addCard:(AddressCard *)theCard;

- (NSUInteger)entries;

- (void)list;

@end