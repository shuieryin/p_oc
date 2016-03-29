//
// Created by Shuieryin on 3/28/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "AddressBook.h"


@implementation AddressBook

@synthesize bookName, book;

// set up the AddressBook's name and an enpty book

- (instancetype)initWithName:(NSString *)name {
    self = [super init];

    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }

    return self;
}

- (instancetype)init {
    return [self initWithName:@"NoName"];
}

- (void)addCard:(AddressCard *)theCard {
    [book addObject:theCard];
}

- (NSUInteger)entries {
    return [book count];
}

- (void)list {
    NSLog(@"======== Contents of: %@ ========", bookName);

    for (AddressCard *theCard in book) {
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }

    NSLog(@"================================================");
}

@end