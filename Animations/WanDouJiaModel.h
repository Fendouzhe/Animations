//
//  WanDouJiaModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>
#import "DailyListModel.h"

@interface WanDouJiaModel : NSObject

@property (nonatomic, strong) NSString *nextPageUrl;
@property (nonatomic, strong) NSNumber *nextPublishTime;
// @property (nonatomic, strong) Null *newestIssueType;
@property (nonatomic, strong) NSMutableArray <DailyListModel *> *dailyList;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

