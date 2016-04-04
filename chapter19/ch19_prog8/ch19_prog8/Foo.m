//
// Created by Shuieryin on 4/3/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Foo.h"


@implementation Foo

@synthesize strVal, intVal, floatVal;

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:strVal forKey:@"FoostrVal"];
    [aCoder encodeInt:intVal forKey:@"FopointVal"];
    [aCoder encodeFloat:floatVal forKey:@"FoofloatVal"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    strVal = [aDecoder decodeObjectForKey:@"FoostrVal"];
    intVal = [aDecoder decodeIntForKey:@"FoointVal"];
    floatVal = [aDecoder decodeFloatForKey:@"FoofloatVal"];

    return self;
}

@end