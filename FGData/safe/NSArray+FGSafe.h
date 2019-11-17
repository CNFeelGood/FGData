//
//  NSArray+FGSafe.h
//  FGData
//
//  Created by 肥儿古德 on 2019/10/24.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (FGSafe)

- (id)fg_objectAtIndex:(NSUInteger)index;

+ (NSArray *)fg_arrayWithCount:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END
