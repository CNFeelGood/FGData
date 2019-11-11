//
//  FGObject.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/5.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGObject : NSObject

- (NSString *)safeString;

- (NSInteger)integerValue;

- (NSString *)urlString;

@end

@interface FGUrlPrefix : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic,copy) NSString * prefix;

@end

NS_ASSUME_NONNULL_END
