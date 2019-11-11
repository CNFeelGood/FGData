//
//  FGObject.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/5.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGObject.h"

@implementation FGObject

- (NSString *)safeString{
    if ([self isKindOfClass:[NSString class]]) {
        return (NSString *)self;
    }
    if ([self isKindOfClass:[NSArray class]]) {
        return @"NSArray";
    }
    if ([self isKindOfClass:[NSDictionary class]]) {
        return @"NSDictionary";
    }
    if ([self isKindOfClass:[NSNull class]]) {
        return @"";
    }
    NSString * string = [NSString stringWithFormat:@"%@",self];
    return string;
}

- (NSInteger)integerValue{
    return self.safeString.integerValue;
}

- (NSString *)urlString{
    NSString * string = self.safeString;
    if ([string hasPrefix:@"http"] == NO) {
        string = [NSString stringWithFormat:@"%@%@",[FGUrlPrefix sharedInstance].prefix,string];
    }
    return string;
}

@end

@implementation FGUrlPrefix

+ (instancetype)sharedInstance{
    static FGUrlPrefix * prefix = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        prefix = [FGUrlPrefix new];
    });
    return prefix;
}
- (NSString *)prefix{
    if (!_prefix) {
        _prefix = @"http://";
    }
    return _prefix;
}

@end
