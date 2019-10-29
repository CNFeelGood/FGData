//
//  NSMutableDictionary+FGSafe.m
//  FGData
//
//  Created by 肥儿古德 on 2019/10/24.
//  Copyright © 2019 hh. All rights reserved.
//

#import "NSMutableDictionary+FGSafe.h"

@implementation NSMutableDictionary (FGSafe)

- (BOOL)fg_setObject:(id)anObject forKey:(id<NSCopying>)aKey{
    BOOL canSet = NO;
    if (anObject && aKey) {
        canSet = YES;
        [self setObject:anObject forKey:aKey];
    }
    return canSet;
}
- (BOOL)fg_removeObjectForKey:(id)aKey{
    BOOL canRemove = NO;
    if (aKey) {
        canRemove = YES;
        [self removeObjectForKey:aKey];
    }
    return canRemove;
}

@end
