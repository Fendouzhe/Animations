//
//  ConsumptionModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface ConsumptionModel : NSObject

@property (nonatomic, strong) NSNumber *shareCount;
@property (nonatomic, strong) NSNumber *collectionCount;
@property (nonatomic, strong) NSNumber *replyCount;
@property (nonatomic, strong) NSNumber *playCount;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

