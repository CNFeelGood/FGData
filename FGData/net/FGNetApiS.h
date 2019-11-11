//
//  FGNetApi.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, FGRequestType) {
    FGRequestTypeNormal,
    FGRequestTypeRefresh,
    FGRequestTypeLoadMore,
};

@interface FGNetApiS : NSObject

//内部block，处理内部逻辑，外部无需关心
@property (nonatomic,copy,readonly) void(^normalBP)(void);
@property (nonatomic,copy,readonly) void(^refreshBP)(void);
@property (nonatomic,copy,readonly) void(^loadMoreBP)(void);
@property (nonatomic,copy,readonly) void(^failBP)(NSString *);
@property (nonatomic,readonly) FGRequestType type;
//用于整合方法的逻辑,子类需要根据实际需求重新声明类型
//@property (nonatomic,strong) FGCodeModel * model;
//初始化方法+回调
+ (instancetype)requestCompletionNormal:(void(^)(void))normal refresh:(void(^)(void))refresh loadMore:(void(^)(void))loadMore fail:(void(^)(NSString * msg))fail;
- (void)requestBlockNormal:(void(^)(void))normal refresh:(void(^)(void))refresh loadMore:(void(^)(void))loadMore fail:(void(^)(NSString * msg))fail;
//子类快速调用集成方法
//- (void)baseRequestSuccWithModel:(FGCodeModel *)model;
- (void)baseRequestFail;
#pragma mark - 以下3个方法在子类重写,需要调用super方法进行参数配置
- (void)requestInView:(UIView *)view;
- (void)refreshInView:(UIView *)view;
- (void)loadMoreInView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
