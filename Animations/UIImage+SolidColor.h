//
//  UIImage+SolidColor.h
//  BaseButton
//
//  Created by LeiLuRong on 16/1/6.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (SolidColor)

/**
 *  Create a solid color image.
 *
 *  @param size  The image size.
 *  @param color The image color.
 *
 *  @return Image.
 */
+ (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)color;

@end
