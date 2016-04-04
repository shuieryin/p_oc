//
// Created by Shuieryin on 3/28/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"


@interface AddressBook : NSObject <NSCoding>

@property(nonatomic, copy) NSString *bookName;
@property(nonatomic, strong) NSMutableArray *book;

- (instancetype)initWithName:(NSString *)name;

- (void)addCard:(AddressCard *)theCard;

- (void)removeCard:(AddressCard *)theCard;

- (NSUInteger)entries;

- (void)list;

- (void)list_b;

- (AddressCard *)lookup:(NSString *)theName;

- (void)lookup_print:(NSString *)theName;

- (void)sort;

- (void)sort_b;

- (NSIndexSet *)lookupAll:(NSString *)theName;

@end