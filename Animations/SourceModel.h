//
//  SourceModel.h
//
//  http://www.cnblogs.com/LeiLuRong/
//  https://github.com/LeiLuRong
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

