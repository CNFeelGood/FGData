//
//  FGImage.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/9.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGImageS.h"
#import <objc/runtime.h>

@implementation FGImageS

+ (BOOL)resolveClassMethod:(SEL)sel{
    Class metaClass = objc_getMetaClass(class_getName(self));
    class_addMethod(metaClass, sel,(IMP)imageWithSelector , "v@:");
    return [super resolveClassMethod:sel];
}

id imageWithSelector(id self,SEL selector){
    return [self imageWithSEL:selector];
}
+ (UIImage *)imageWithSEL:(SEL)sel{
    return [UIImage imageNamed:NSStringFromSelector(sel)];
}

@end
