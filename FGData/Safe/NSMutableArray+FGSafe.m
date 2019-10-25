//
//  NSMutableArray+FGSafe.m
//  FGData
//
//  Created by 肥儿古德 on 2019/10/24.
//  Copyright © 2019 hh. All rights reserved.
//

#import "NSMutableArray+FGSafe.h"

@implementation NSMutableArray (FGSafe)

- (BOOL)fg_addObject:(id)anObject{
    BOOL canAdd = anObject;
    if (canAdd) {
        [self addObject:anObject];
    }
    return canAdd;
}
- (BOOL)fg_removeObjectAtIndex:(NSUInteger)index{
    BOOL canRemove = self.count > index;
    if (canRemove) {
        [self removeObjectAtIndex:index];
    }
    return canRemove;
}
- (BOOL)fg_insertObject:(id)anObject atIndex:(NSUInteger)index{
    BOOL canInsert = anObject;
    if (canInsert) {
        [self insertObject:anObject atIndex:index];
    }
    return canInsert;
}

@end
