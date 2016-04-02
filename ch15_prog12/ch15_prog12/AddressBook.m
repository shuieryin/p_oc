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

- (void)removeCard:(AddressCard *)theCard {
    [book removeObjectIdenticalTo:theCard];
}

- (NSUInteger)entries {
    return [book count];
}

- (void)list {
    NSLog(@"======== Contents of: %@ =========", bookName);

    for (AddressCard *theCard in book) {
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }

    NSLog(@"====================================================");
}

- (void)list_b {
    NSLog(@"======== Contents of: %@ =========", bookName);

    [book enumerateObjectsUsingBlock:^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }];

    NSLog(@"====================================================");
}

- (AddressCard *)lookup:(NSString *)theName {
    for (AddressCard *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            return nextCard;
        }
    }

    return nil;
}

- (void)lookup_print:(NSString *)theName {
    NSLog(@"%s", [theName UTF8String]);

    AddressCard *theCard = [self lookup:theName];

    if (theCard != nil) {
        [theCard print];
    } else {
        NSLog(@"Not found!");
    }
}

- (void)sort {
    [book sortUsingSelector:@selector(compareNames:)];
}

- (void)sort_b {
    [book sortUsingComparator:
            ^(id obj1, id obj2) {
                return [obj1 compareNames:obj2];
            }
    ];
}

- (NSIndexSet *)lookupAll:(NSString *)theName {
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
            ^(id obj, NSUInteger idx, BOOL *stop) {
                if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame) {
                    return YES; // found a match, keep going
                } else {
                    return NO; // keep looking
                }
            }
    ];

    return result;
}

@end