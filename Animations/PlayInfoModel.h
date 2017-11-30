//
//  PlayInfoModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface PlayInfoModel : NSObject

@property (nonatomic, strong) NSNumber *width;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSNumber *height;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

