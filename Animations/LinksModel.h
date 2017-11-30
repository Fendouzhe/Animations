//
//  LinksModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface LinksModel : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSNumber *len;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSNumber *amended_len;
@property (nonatomic, strong) NSNumber *pos;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

