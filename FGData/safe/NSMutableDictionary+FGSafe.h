//
//  NSMutableDictionary+FGSafe.h
//  FGData
//
//  Created by 肥儿古德 on 2019/10/24.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (FGSafe)

- (BOOL)fg_setObject:(id)anObject forKey:(id<NSCopying>)aKey;
- (BOOL)fg_removeObjectForKey:(id)aKey;

@end

NS_ASSUME_NONNULL_END
