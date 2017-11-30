//
//  RequestBodyType.m
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.cnblogs.com/LeiLuRong/
//  https://github.com/LeiLuRong
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
