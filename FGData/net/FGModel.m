//
//  FGModel.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGModel.h"

@implementation FGModel

+ (instancetype)modelWithDict:(NSDictionary *)dict{
    if (!dict) {
        return nil;
    }
    id model = [[[self class] alloc] initWithDictionary:dict];
    return model;
}
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setupWithDict:dict];
    }
    return self;
}
- (void)setupWithDict:(NSDictionary *)dict{
    [self setValuesForKeysWithDictionary:dict];
}
+ (NSArray *)arrayWithArray:(NSArray *)array{
    NSMutableArray * mutArray = [[NSMutableArray alloc] initWithCapacity:array.count];
    for (NSDictionary * dict in array) {
        id model = [[self class] modelWithDict:dict];
        [mutArray addObject:model];
    }
    NSArray * returnArray = [mutArray copy];
    return returnArray;
}
- (void)setValue:(id)value forKey:(NSString *)key{
    if ([value isKindOfClass:[NSNull class]]) {
        [self setValue:nil forKey:key];
    }else if ([value isKindOfClass:[NSDictionary class]]){
        Class aClass = [self subModelDict][key];
        if ([aClass isSubclassOfClass:[FGModel class]]) {
            SEL select = NSSelectorFromString(@"modelWithDict:");
            value = [aClass performSelector:select withObject:value];
        }
        [super setValue:value forKey:key];
    }else{
        [super setValue:value forKey:key];
    }
}
- (NSDictionary *)subModelDict{
    NSLog(@"模型中存在模型时，重写%@",_cmd);
    return nil;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSString * selfClassName = NSStringFromClass([self class]);
    if ([selfClassName isEqualToString:[self projectBaseModelName]]) {
        //指定为基类的模型在初始化时，不需要报没有定义某属性的警告
        return;
    }
    //实际的子类没有定义某属性时，报此警告
    NSString * msg = [NSString stringWithFormat:@"\n----model[%@]中没有定义属性[%@],\n----但服务器返回了这个属性,值为[%@]!",NSStringFromClass([self class]),key,value];
    NSLog(@"%@",msg);
}
- (NSString *)projectBaseModelName{
    NSLog(@"没有指定模型的基类,重写%@",_cmd);
    return nil;
}

@end
