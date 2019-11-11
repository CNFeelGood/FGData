//
//  NSString+Calculate.m
//  EnterpriseManage
//
//  Created by CQKM on 2018/1/8.
//  Copyright © 2018年 liguojun. All rights reserved.
//

#import "NSString+Calculate.h"

@implementation NSString (Calculate)

- (CGFloat)calculateHeightWithFont:(UIFont *)font width:(CGFloat)width{
    NSDictionary * dict = @{NSFontAttributeName: font};
    CGSize textSize = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dict context:nil].size;
    return ceil(textSize.height) + 1;
}
//宽度
- (CGFloat)calculateWidthWithFont:(UIFont *)font{
    NSDictionary * dict = @{NSFontAttributeName: font};
    CGSize textSize = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, 0.1) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dict context:nil].size;
    return ceil(textSize.width) + 1;
}

@end
