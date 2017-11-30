//
//  SourceModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface SourceModel : NSObject

@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *client_id;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

