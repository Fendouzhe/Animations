//
//  PictureData.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>
#import "WaterfallPictureModel.h"
#import "WaterfallPictureModel.h"

@interface PictureData : NSObject

@property (nonatomic, strong) NSNumber *coupon;
@property (nonatomic, strong) NSString *picsize;
@property (nonatomic, strong) NSNumber *hasrp;
@property (nonatomic, strong) NSString *pgsource;
@property (nonatomic, strong) NSNumber *nopth;
@property (nonatomic, strong) NSNumber *has_next;
@property (nonatomic, strong) WaterfallPictureModel *first_blog;
@property (nonatomic, strong) NSMutableArray <WaterfallPictureModel *> *blogs;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

