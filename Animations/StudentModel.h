//
//  StudentModel.h
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//
//  Copyright (c) LeiLuRong All rights reserved.
//


#import <Foundation/Foundation.h>

@interface StudentModel : NSObject

@property (nonatomic, strong) NSString       *name;
@property (nonatomic, strong) NSNumber       *age;

- (void)setValue:(id)value forUndefinedKey:(NSString *)key;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

