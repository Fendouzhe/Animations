//
//  CountsModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface CountsModel : NSObject

@property (nonatomic, strong) NSNumber *posts;
@property (nonatomic, strong) NSNumber *stars;
@property (nonatomic, strong) NSNumber *followers;
@property (nonatomic, strong) NSNumber *following;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

