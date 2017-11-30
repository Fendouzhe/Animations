//
//  RequestBodyType.m
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//

#import "RequestBodyType.h"

@implementation RequestBodyType

+ (instancetype)type {

    RequestBodyType *bodyType = [[[self class] alloc] init];
    return bodyType;
}

@end

@implementation HttpBodyType

@end

@implementation JsonBodyType

@end

@implementation PlistBodyType

@end
