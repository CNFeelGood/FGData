//
//  FGListModelS.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGListModelS.h"

@implementation FGListModelS

//- (void)setData:(NSArray *)data{
//    if ([data isKindOfClass:[NSDictionary class]]) {
//        [self setupWithDictionary:(NSDictionary *)data];
//    }else{
//        _data = data;
//    }
//}
//- (void)setValue:(id)value forKey:(NSString *)key{
//    if ([key isEqualToString:@"data"] && [value isKindOfClass:[NSDictionary class]] ) {
//        [self setupWithDictionary:value];
//    }else{
//        if ([key isEqualToString:@"list"]) {
//            key = @"data";
//        }
//        [super setValue:value forKey:key];
//    }
//}
//
//- (NSArray *)models{
//    if (!_models && [_data isKindOfClass:[NSArray class]]) {
//        Class class = [self classInModels];
//        if (class) {
//            SEL selector = NSSelectorFromString(@"arrayWithArray:");
//            _models = [class performSelector:selector withObject:_data];
//        }
//    }
//    return _models;
//}
//
//- (Class)classInModels{
//    NSLog(@"===vvv此方法必须重写，否则无法得到正确的models。注意重写时不能调用super方法，否则此提示还会出现vvv===");
//    return nil;
//}

@end
