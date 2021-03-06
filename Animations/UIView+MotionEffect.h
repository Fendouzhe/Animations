//
//  UIView+MotionEffect.h
//  MotionEffect
//
//  Created by LeiLuRong on 16/2/18.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MotionEffect)

/**
 *  Add center motion effect.
 *
 *  https://github.com/jvenegas/TLMotionEffect
 *
 *  @param offset Offset.
 */
- (void)addCenterMotionEffectsWithOffset:(CGFloat)offset;

@end
