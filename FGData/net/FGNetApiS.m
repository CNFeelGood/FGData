//
//  FGNetApi.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGNetApiS.h"

@implementation FGNetApiS

+ (instancetype)requestCompletionNormal:(void (^)(void))normal refresh:(void (^)(void))refresh loadMore:(void (^)(void))loadMore fail:(void (^)(NSString * _Nonnull))fail{
    FGNetApiS * api = [[self class] new];
    [api requestBlockNormal:normal refresh:refresh loadMore:loadMore fail:fail];
    return api;
}
- (void)requestBlockNormal:(void (^)(void))normal refresh:(void (^)(void))refresh loadMore:(void (^)(void))loadMore fail:(void (^)(NSString * _Nonnull))fail{
    _normalBP = normal;
    _refreshBP = refresh;
    _loadMoreBP = loadMore;
    _failBP = fail;
}
- (void)requestInView:(id)view{
    _type = FGRequestTypeNormal;
}
- (void)refreshInView:(id)view{
    _type = FGRequestTypeRefresh;
}
- (void)loadMoreInView:(id)view{
    _type = FGRequestTypeLoadMore;
}
//- (void)baseRequestSuccWithModel:(FGCodeModel *)model{
//    if (model.code == FGApiCodeSucc) {
//        self.model = model;
//        if (self.requestBP) {
//            self.requestBP();
//        }
//    }else{
//        if (self.failBP) {
//            self.failBP(model.msg.safeString);
//        }
//    }
//}
- (void)baseRequestFail{
    if (self.failBP) {
        self.failBP(@"请求出错，请检查网络或重试");
    }
}

@end
