//
//  SystemTimeInfomation.h
//  Animations
//
//  Created by LeiLuRong on 15/12/3.
//  Copyright © 2015年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SystemTimeInfomation : NSObject

@property (nonatomic, strong) NSDateFormatter  *dateFormatter;

+ (SystemTimeInfomation *)sharedInstance;

/**
 *  Date format, please set dateFormatterString like '**:**:**:**:**'.
 *
 *  @param dateFormatterString Date format string.
 */
- (void)setDateFormatterString:(NSString *)dateFormatterString;

/**
 *  Current time infomation.
 *
 *  @return Current time infomation.
 */
- (NSDictionary *)currentTimeInfomation;

@end
