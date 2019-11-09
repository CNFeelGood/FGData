//
//  FGColor.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/9.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGColor.h"
#import <objc/runtime.h>

@implementation FGColor

- (UIColor *)fg_Alpha:(CGFloat)alpha{
    return [self colorWithAlphaComponent:alpha];
}
+ (UIColor *)fg_R:(NSUInteger)r G:(NSUInteger)g B:(NSUInteger)b{
    return [UIColor colorWithRed:r/255. green:g/255. blue:b/255. alpha:1.];
}
+ (UIColor *)fg_RGB:(NSUInteger)rgb{
    return [self fg_R:rgb G:rgb B:rgb];
}
+ (UIColor *)fg_Hex:(NSString *)hex{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // 判断前缀
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.];
}
#pragma mark - runtime
+ (BOOL)resolveClassMethod:(SEL)sel{
    Class metaClass = objc_getMetaClass(class_getName(self));
    class_addMethod(metaClass, sel, (IMP)colorWithSelector, "@@:");
    return [super resolveClassMethod:sel];
}
id colorWithSelector(id self,SEL selector){
    NSString * originString = NSStringFromSelector(selector);
    NSString * targetString = [originString substringFromIndex:3];
    return [FGColor fg_Hex:targetString];
}

@end
