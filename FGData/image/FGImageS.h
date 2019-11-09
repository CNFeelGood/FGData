//
//  FGImage.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/9.
//  Copyright © 2019 hh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 请勿直接调用本类，使用子类继承后，在子类声明返回UIImage的+方法，方法名称为图片名，即可返回对应的图片
 */
@interface FGImageS : UIImage

@end

NS_ASSUME_NONNULL_END
