//
//  NSMutableArray+FGSafe.h
//  FGData
//
//  Created by 肥儿古德 on 2019/10/24.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (FGSafe)

- (BOOL)fg_addObject:(id)anObject;
- (BOOL)fg_removeObjectAtIndex:(NSUInteger)index;
- (BOOL)fg_insertObject:(id)anObject atIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
