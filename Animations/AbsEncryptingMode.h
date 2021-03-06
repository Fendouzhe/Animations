//
//  AbsEncryptingMode.h
//  ValueStorageManager
//
//  Created by LeiLuRong on 16/3/16.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbsEncryptingMode : NSObject

/**
 *  Encrypt data.
 *
 *  @param data Data.
 *
 *  @return Encrypt's data.
 */
- (NSData *)encryptData:(NSData *)data;

/**
 *  Decrypt data.
 *
 *  @param data Data.
 *
 *  @return Decrypt's data.
 */
- (NSData *)decryptData:(NSData *)data;

@end
