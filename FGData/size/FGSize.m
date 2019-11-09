//
//  FGSize.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/7.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGSize.h"

@implementation FGSize

+ (void)setupUIPicWidth:(CGFloat)width{
    [FGUIWidthConfig sharedInstance].width = width;
}
+ (CGFloat)screenWidth{
    return [UIScreen mainScreen].bounds.size.width;
}
+ (CGFloat)screenHeight{
    return [UIScreen mainScreen].bounds.size.height;
}
+ (CGFloat)heightWithUIPicHeight:(CGFloat)picHeight{
    return picHeight * 1. / [FGUIWidthConfig sharedInstance].width * [self screenWidth];
}
+ (CGSize)sizeWithUIPicHeight:(CGFloat)picHeight{
    return CGSizeMake([self screenWidth], [self heightWithUIPicHeight:picHeight]);
}
+ (CGSize)fullWidthWithHeight:(CGFloat)height{
    return CGSizeMake([self screenWidth], height);
}
+ (CGSize)fullHeightWithWidth:(CGFloat)width{
    return CGSizeMake(width, [self screenHeight]);
}

@end

@implementation FGUIWidthConfig

+ (instancetype)sharedInstance{
    static FGUIWidthConfig * config = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        config = [FGUIWidthConfig new];
        config.width = 375;
    });
    return config;
}

@end
