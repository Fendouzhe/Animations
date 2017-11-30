//
//  ResponseDataType.h
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.jianshu.com/u/a5b423cb2c25
//  https://github.com/Fendouzhe
//

#import <Foundation/Foundation.h>

@interface ResponseDataType : NSObject

+ (instancetype)type;

@end

@interface JsonDataType : ResponseDataType

@end

@interface HttpDataType : ResponseDataType

@end
