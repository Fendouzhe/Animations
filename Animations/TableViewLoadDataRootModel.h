//
//  TableViewLoadDataRootModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>
#import "MetaModel.h"
#import "DataModel.h"

@interface TableViewLoadDataRootModel : NSObject

@property (nonatomic, strong) MetaModel *meta;
@property (nonatomic, strong) NSMutableArray <DataModel *> *data;

/**
 *  Init the model with dictionary
 *
 *  @param dictionary dictionary
 *
 *  @return model
 */
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

