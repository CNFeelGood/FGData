//
//  NSArray+FGSafe.m
//  FGData
//
//  Created by 肥儿古德 on 2019/10/24.
//  Copyright © 2019 hh. All rights reserved.
//

#import "NSArray+FGSafe.h"

@implementation NSArray (FGSafe)

- (id)fg_objectAtIndex:(NSUInteger)index{
    if (self.count > index) {
        return [self objectAtIndex:index];
    }
    return nil;
}

+ (NSArray *)fg_arrayWithCount:(NSInteger)count{
    NSMutableArray * muts = [[NSMutableArray alloc] initWithCapacity:count];
    for (NSInteger i = 0; i < count; i ++) {
        [muts addObject:@""];
    }
    return muts;
}

@end
