//
//  FGPageApiS.m
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGPageApiS.h"

@implementation FGPageApiS

//@dynamic model;

- (instancetype)init{
    if (self = [super init]) {
        self.limit = 10;
        self.page = 1;
    }
    return self;
}
//- (void)pageRequestSuccWithModel:(FGListModel *)model{
//    if (model.code == FGApiCodeSucc) {
//        if (model.models.count < self.limit) {
//            self.hasMore = NO;
//        }else{
//            self.hasMore = YES;
//        }
//        if (self.page == 1) {
//            self.model = model;
//            if (self.refreshBP) {
//                self.refreshBP();
//            }
//        }else{
//            NSMutableArray * muts = [NSMutableArray new];
//            [muts addObjectsFromArray:self.model.models];
//            [muts addObjectsFromArray:model.models];
//            self.model.models = [muts copy];
//            if (self.loadMoreBP) {
//                self.loadMoreBP();
//            }
//        }
//    }else{
//        self.page --;
//        if (self.failBP) {
//            self.failBP(model.msg.safeString);
//        }
//    }
//}
- (void)pageRequestFail{
    [self baseRequestFail];
    self.page --;
}
- (void)requestInView:(UIView *)view{
    NSLog(@"子类重写");
}
- (void)refreshInView:(UIView *)view{
    [super refreshInView:view];
    self.page = 1;
    [self requestInView:view];
}
- (void)loadMoreInView:(UIView *)view{
    [super loadMoreInView:view];
    self.page ++;
    [self requestInView:view];
}
- (NSString *)limitString{
    return [NSString stringWithFormat:@"%@",@(self.limit)];
}
- (NSString *)pageString{
    return [NSString stringWithFormat:@"%@",@(self.page)];
}

@end
