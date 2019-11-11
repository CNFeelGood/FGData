//
//  NSString+Calculate.h
//  EnterpriseManage
//
//  Created by CQKM on 2018/1/8.
//  Copyright © 2018年 liguojun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Calculate)

- (CGFloat)calculateHeightWithFont:(UIFont *)font width:(CGFloat)width;
- (CGFloat)calculateWidthWithFont:(UIFont *)font;

@end
