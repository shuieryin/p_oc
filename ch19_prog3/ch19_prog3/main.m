//
//  main.m
//  ch19_prog3
//
//  Created by Shuieryin on 4/3/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        [fm changeCurrentDirectoryPath:@"/Users/shuieryin/Workspaces/p_oc/ch19_prog3/ch19_prog3"];

        NSDictionary *glossary = @{
                @"abstract class" : @"A class defined so other classes can inherit from it.",
                @"adopt" : @"To implement all the methods defined in a protocol",
                @"archiving" : @"Storing an object for later user. "
        };

        [NSKeyedArchiver archiveRootObject:glossary toFile:@"glossary.archive"];

        NSDictionary *glossaryUnArch = [NSKeyedUnarchiver unarchiveObjectWithFile:@"glossary.archive"];

        for (NSString *key in glossary) {
            NSLog(@"%@: %@", key, glossaryUnArch[key]);
        }

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

        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Steve's Address Book"];

        // Add the cards to the address book

        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];

        [myBook sort];

        if (![NSKeyedArchiver archiveRootObject:myBook toFile:@"addrbook.arch"]) {
            NSLog(@"archiving failed");
        }

        AddressBook *myBookReadBack = [NSKeyedUnarchiver unarchiveObjectWithFile:@"addrbook.arch"];

        [myBookReadBack list];
    }

    return 0;
}