//
// Created by Shuieryin on 3/16/16.
// Copyright (c) 2016 Shuieryin. All rights reserved.
//

#import "Square.h"
#include <CoreFoundation/CoreFoundation.h>


@implementation Square

- (void)setSide:(int)s {
    [self setWidth:s andHeight:s];
}

- (int)side {
    return self.width;
}

@end