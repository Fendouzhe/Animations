//
//  RequestBodyType.h
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.cnblogs.com/LeiLuRong/
//  https://github.com/LeiLuRong
//

#import <Foundation/Foundation.h>

@interface RequestBodyType : NSObject

+ (instancetype)type;

@end

@interface HttpBodyType : RequestBodyType

@end

@interface JsonBodyType : RequestBodyType

@end

@interface PlistBodyType : RequestBodyType

@end
