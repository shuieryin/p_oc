//
//  main.m
//  ch19_prog9
//
//  Created by Shuieryin on 4/3/16.
//  Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "Foo.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        [fm changeCurrentDirectoryPath:@"/Users/shuieryin/Workspaces/p_oc/ch19_prog9/ch19_prog9"];

        Foo *myFoo1 = [[Foo alloc] init];
        NSMutableData *dataArea;
        NSKeyedArchiver *archiver;

        // Insert code from Program 19.7 to create an Address Book
        myFoo1.strVal = @"This is the string";
        myFoo1.intVal = 12345;
        myFoo1.floatVal = 98.6;

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
        // in myBook containing four address cards

        // Set up a data area and connect it to an NSKeyedArchiver object
        dataArea = [NSMutableData data];

        archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:dataArea];

        // Now we can begin to archive objects
        [archiver encodeObject:myBook forKey:@"myaddrbook"];
        [archiver encodeObject:myFoo1 forKey:@"myfoo1"];
        [archiver finishEncoding];

        // Write the archived data area to a file
        if (![dataArea writeToFile:@"myArchive" atomically:YES]) {
            NSLog(@"Archiving failed!");
        }

        NSData *dataAreaRB;
        NSKeyedUnarchiver *unarchiver;
        Foo *myFoo1RB;
        AddressBook *myBookRB;

        // Read in the archive and connect an NSKeyedUnarchiver object to it
        dataAreaRB = [NSData dataWithContentsOfFile:@"myArchive"];

        if (!dataAreaRB) {
            NSLog(@"Can't read back archive file!");
            return 1;
        }

        unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:dataAreaRB];

        // Decode the objects we previously stored in the archive
        myBookRB = [unarchiver decodeObjectForKey:@"myaddrbook"];
        myFoo1RB = [unarchiver decodeObjectForKey:@"myfoo1"];

        [unarchiver finishDecoding];

        // Verify that the restore was successful
        [myBookRB list];
        NSLog(@"%@\n%i\n%g", myFoo1RB.strVal, myFoo1RB.intVal, myFoo1RB.floatVal);

    }

    return 0;
}