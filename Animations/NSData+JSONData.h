//
//  NSData+JSONData.h
//  Networking
//
//  Created by LeiLuRong on 15/8/4.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (JSONData)

/**
 *  将JSON字符串转换为列表格式(字典或者数组)
 *
 *  @return 字典或者数组
 */
- (id)toListProperty;

@end
