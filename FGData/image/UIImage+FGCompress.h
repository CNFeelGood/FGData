//
//  UIImage+FGCompress.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/10.
//  Copyright © 2019 hh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FGCompress)

/**
 *  图片的压缩方法
 *
 *  @param sourceImg   要被压缩的图片
 *  @param defineWidth 要被压缩的尺寸(宽)
 *
 *  @return 被压缩的图片
 */
+(UIImage *)IMGCompressed:(UIImage *)sourceImg targetWidth:(CGFloat)defineWidth;

@end

NS_ASSUME_NONNULL_END
