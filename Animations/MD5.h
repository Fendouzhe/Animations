//
//  MD5.h
//  Animations
//
//  Created by LeiLuRong on 16/1/5.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5 : NSObject

/**
 *  Transform normal string to MD5's 32 bit lower string.
 *
 *  @param string Normal string.
 *
 *  @return MD5's 32 bit lower string.
 */
+ (NSString*)md532BitLower:(NSString *)string;

/**
 *  Transform normal string to MD5's 32 bit lower string.
 *
 *  @param string Normal string.
 *
 *  @return MD5's 32 bit upper string.
 */
+ (NSString*)md532BitUpper:(NSString*)string;

@end
