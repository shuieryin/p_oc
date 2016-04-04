//
//  main.m
//  ch15_prog12
//
//  Created by Shuieryin on 3/28/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";

        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";

        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";

        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";

        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];

        // Now set up four address cards

        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];

        // Set up a new address book

        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Address Book"];

        NSLog(@"Entries in address book after creation: %li", [myBook entries]);

        // Add the cards to the address book

        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];

        NSLog(@"Entries in address book after adding cards: %li", [myBook entries]);

        [myBook list];

        // Look up a person by name
        [myBook lookup_print:@"Stephen Kochan"];

        // Try another lookup
        [myBook lookup_print:@"Haibo Zhang"];

        // Now remove the entry from the phone book
        [myBook removeCard:card3];
        [myBook list]; // verify it's gone

        // Add back card3
        [myBook addCard:card3];
        [myBook list]; // verify added back

        // Sort address book
        [myBook sort_b];
        [myBook list_b]; // verify sorted

        NSIndexSet *lookupAllRes = [myBook lookupAll:@"Stephen Kochan"];
        [lookupAllRes enumerateIndexesUsingBlock:
                ^(NSUInteger idx, BOOL *stop) {
                    [myBook.book[idx] print];
                }
        ];
    }

    return 0;
}