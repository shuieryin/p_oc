//
// Created by Shuieryin on 3/28/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "AddressCard.h"


@implementation AddressCard

@synthesize name, email;

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail {
    self.name = theName;
    self.email = theEmail;
}

- (void)print {
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|       O                 O        |");
    NSLog(@"====================================");
}
@end