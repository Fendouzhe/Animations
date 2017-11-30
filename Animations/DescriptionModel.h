//
//  DescriptionModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>
#import "EntitiesModel.h"

@interface DescriptionModel : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *html;
@property (nonatomic, strong) EntitiesModel *entities;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

