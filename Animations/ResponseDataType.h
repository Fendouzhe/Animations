//
//  ResponseDataType.h
//  Networking
//
//  Created by LeiLuRong on 15/11/6.
//
//  http://www.cnblogs.com/LeiLuRong/
//  https://github.com/LeiLuRong
//

#import <Foundation/Foundation.h>

@interface ResponseDataType : NSObject

+ (instancetype)type;

@end

@interface JsonDataType : ResponseDataType

@end

@interface HttpDataType : ResponseDataType

@end
