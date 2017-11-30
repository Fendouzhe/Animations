//
//  DESEncryptMode.m
//  ValueStorageManager
//
//  Created by LeiLuRong on 16/3/16.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "DESEncryptMode.h"
#import "NSData+CommonCrypto.h"

static NSString *password = @"DESEncrypt";

@implementation DESEncryptMode

- (NSData *)encryptData:(NSData *)data {
    
    return [data DESEncryptedDataUsingKey:password error:nil];
}

- (NSData *)decryptData:(NSData *)data {
    
    return [data decryptedDESDataUsingKey:password error:nil];
}

@end
