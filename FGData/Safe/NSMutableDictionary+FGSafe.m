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
    BOOL canSet = anObject && aKey;
    if (canSet) {
        [self setObject:anObject forKey:aKey];
    }
    return canSet;
}
- (BOOL)fg_removeObjectForKey:(id)aKey{
    BOOL canRemove = aKey;
    if (canRemove) {
        [self removeObjectForKey:aKey];
    }
    return canRemove;
}

@end
