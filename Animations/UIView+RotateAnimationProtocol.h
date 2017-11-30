//
//  NSObject+RotateAnimationProtocol.h
//  RotateView
//
//  Created by LeiLuRong on 15/7/31.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (RotateAnimationProtocol)

/**
 *  在初始化的时候保存transform的值
 */
@property (nonatomic) CGAffineTransform  defaultTransform;

/**
 *  旋转的动画时间
 */
@property (nonatomic) CGFloat            rotateDuration;

@end
