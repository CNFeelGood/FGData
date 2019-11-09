//
//  FGColor.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/9.
//  Copyright © 2019 hh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGColorS : UIColor

- (UIColor *)fg_Alpha:(CGFloat)alpha;
+ (UIColor *)fg_R:(NSUInteger)r G:(NSUInteger)g B:(NSUInteger)b;
+ (UIColor *)fg_RGB:(NSUInteger)rgb;
+ (UIColor *)fg_Hex:(NSString *)hex;

#pragma mark - 常用
//根据需要复制到子类使用
//+ (UIColor *)themeColor;
//+ (UIColor *)bgColor;
//+ (UIColor *)hex282828;
//+ (UIColor *)hex333333;
//+ (UIColor *)hex666666;
//+ (UIColor *)hex999999;
//+ (UIColor *)hexdddddd;


@end

NS_ASSUME_NONNULL_END
