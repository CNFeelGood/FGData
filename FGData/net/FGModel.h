//
//  FGModel.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGModel : NSObject

+ (instancetype)modelWithDict:(NSDictionary *)dict;

- (instancetype)initWithDict:(NSDictionary *)dict;
- (void)setupWithDict:(NSDictionary *)dict;
+ (NSArray *)arrayWithArray:(NSArray *)array;

/**
 model中包含model时，重写此方法，返回指定字典，key为属性名，value为model的类

 @return @{属性名称:model类}
 */
- (NSDictionary *)subModelDict;

/**
 当类名和返回值相同时，不会打印属性未定义的log，否则会打印

 @return 不打印log的类名
 */
- (NSString *)projectBaseModelName;

@end

NS_ASSUME_NONNULL_END
