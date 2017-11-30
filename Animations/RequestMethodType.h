//
//  RequestMethodType.h
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//

#import <Foundation/Foundation.h>

@interface RequestMethodType : NSObject

+ (instancetype)type;

@end

@interface GetMethod : RequestMethodType

@end

@interface PostMethod : RequestMethodType

@end

@interface UploadMethod : RequestMethodType

@end
