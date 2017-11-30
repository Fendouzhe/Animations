//
//  SignMaker.h
//  MakeSign
//
//  Created by LeiLuRong on 16/1/13.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SignMaker : NSObject

/**
 *  Make sign string from dictionary.
 *
 *  @param dictionary Dictionary.
 *
 *  @return Signed string.
 */
+ (NSString *)signMakerWithDictionary:(NSDictionary <NSString *, NSString *> *)dictionary;

@end
