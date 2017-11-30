//
//  AbsRequestParameterSerializer.h
//  AFNetworking-3.x
//
//  Created by LeiLuRong on 16/3/15.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbsRequestParameterSerializer : NSObject

/**
 *  处理请求参数（字典或者数组）
 *
 *  @param requestParameter 请求参数
 *
 *  @return 处理后的参数
 */
- (id)serializeRequestParameter:(id)requestParameter;

@end
