//
//  RequestMethodType.m
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//

#import "RequestMethodType.h"

@implementation RequestMethodType

+ (instancetype)type {

    RequestMethodType *method = [[[self class] alloc] init];
    return method;
}

@end

@implementation GetMethod

@end

@implementation PostMethod

@end

@implementation UploadMethod

@end
