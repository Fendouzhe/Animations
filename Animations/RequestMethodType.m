//
//  RequestMethodType.m
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.cnblogs.com/LeiLuRong/
//  https://github.com/LeiLuRong
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
