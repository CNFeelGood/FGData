//
//  FGNet.h
//  FGData
//
//  Created by 肥儿古德 on 2019/10/29.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,FGNetStatus) {
    FGNetStatusUnKnown  = -1,
    FGNetStatusNoNet    = 0,
    FGNetStatusGPRS     = 1,
    FGNetStatusWiFi     = 2,
};

typedef void(^DownloadProgress)(NSProgress * downloadProgress, double currentValue);

typedef void(^FGNetSucc)(id succ);

typedef void(^FGNetFail)(NSError * fail);

typedef void(^FGNetResult)(FGNetSucc, FGNetFail);

/**
 请不要直接调用本类,用子类继承后，将方法完善后再调用
 */
@interface FGNetS : NSObject

#pragma mark - 子类去注释
//@property (nonatomic,strong) AFHTTPSessionManager *manager;

#pragma mark - 子类重写
//- (void)POST:(NSString *)url
//  Parameters:(NSDictionary *)parameters
//     Success:(void(^)(id responseObject))success
//     Failure:(void(^)(NSError *error))failure
//      inView:(UIView *)view;
//
//- (void)GET:(NSString *)url
// Parameters:(NSDictionary *)parameters
//    Success:(void(^)(id responseObject))success
//    Failure:(void(^)(NSError *error))failure
//     inView:(UIView *)view;
//
//- (void)PUT:(NSString *)url
// Parameters:(NSDictionary *)parameters
//    Success:(void(^)(id responseObject))success
//    Failure:(void(^)(NSError *error))failure
//     inView:(UIView *)view;
//
//- (void)uploadImagesWithUrl:(NSString *)url images:(NSArray *)images targetWith:(CGFloat)width succ:(void(^)(id responseObject))succ fail:(void(^)(NSError *error))fail progress:(void(^)(CGFloat progress))progress inView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
