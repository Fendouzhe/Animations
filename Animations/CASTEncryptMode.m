//
//  CASTEncryptMode.m
//  ValueStorageManager
//
//  Created by LeiLuRong on 16/3/16.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "CASTEncryptMode.h"
#import "NSData+CommonCrypto.h"

static NSString *password = @"CASTEncrypt";

@implementation CASTEncryptMode

- (NSData *)encryptData:(NSData *)data {
    
    return [data CASTEncryptedDataUsingKey:password error:nil];;
}

- (NSData *)decryptData:(NSData *)data {
    
    return [data decryptedCASTDataUsingKey:password error:nil];;
}

@end
