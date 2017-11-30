//
//  RequestBodyType.h
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
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
