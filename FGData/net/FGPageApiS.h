//
//  FGPageApiS.h
//  FGData
//
//  Created by 肥儿古德 on 2019/11/11.
//  Copyright © 2019 hh. All rights reserved.
//

#import "FGNetApiS.h"

NS_ASSUME_NONNULL_BEGIN

@interface FGPageApiS : FGNetApiS

//- (void)pageRequestSuccWithModel:(FGListModel *)model;
- (void)pageRequestFail;
//@property (nonatomic,strong) FGListModel * model;
@property (nonatomic) NSInteger limit;
@property (nonatomic) NSInteger page;
@property (nonatomic) BOOL hasMore;

- (NSString *)limitString;
- (NSString *)pageString;

@end

NS_ASSUME_NONNULL_END
