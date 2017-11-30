//
//  RequestMethodType.h
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.cnblogs.com/LeiLuRong/
//  https://github.com/LeiLuRong
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
