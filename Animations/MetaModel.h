//
//  MetaModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface MetaModel : NSObject

@property (nonatomic, strong) NSString *max_id;
@property (nonatomic, strong) NSNumber *code;
@property (nonatomic, strong) NSString *min_id;
@property (nonatomic, strong) NSNumber *more;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

