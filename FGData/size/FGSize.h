//
//  FGSize.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/7.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGSize : NSObject

/**
 设置UI效果图的默认宽度，默认375

 @param width 效果图的宽度
 */
+ (void)setupUIPicWidth:(CGFloat)width;

+ (CGFloat)screenWidth;

+ (CGFloat)screenHeight;

/**
 根据设计图的高度得到在当前屏幕上的高度

 @param picHeight 设计图高度
 @return 当前屏幕上的高度
 */
+ (CGFloat)heightWithUIPicHeight:(CGFloat)picHeight;

/**
 根据设计图的高度得到在当前屏幕上的尺寸

 @param picHeight 设计图高度
 @return 当前屏幕上的尺寸
 */
+ (CGSize)sizeWithUIPicHeight:(CGFloat)picHeight;

/**
 获得一个屏幕宽度和指定高度生成的size

 @param height 指定高度
 @return 生成的size
 */
+ (CGSize)fullWidthWithHeight:(CGFloat)height;

/**
 获得一个指定宽度和屏幕高度生成的size

 @param width 指定宽度
 @return 生成的size
 */
+ (CGSize)fullHeightWithWidth:(CGFloat)width;

@end

@interface FGUIWidthConfig : NSObject

+ (instancetype)sharedInstance;

/**
 默认375的宽度
 */
@property (nonatomic) CGFloat width;

@end

NS_ASSUME_NONNULL_END
