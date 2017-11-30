//
//  UIView+MotionEffect.m
//  MotionEffect
//
//  Created by LeiLuRong on 16/2/18.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "UIView+MotionEffect.h"

@implementation UIView (MotionEffect)

- (void)addCenterMotionEffectsWithOffset:(CGFloat)offset {

    if(floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        
        return;
    }
    
    UIInterpolatingMotionEffect *xAxis;
    UIInterpolatingMotionEffect *yAxis;
    
    xAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                            type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    xAxis.maximumRelativeValue = @(offset);
    xAxis.minimumRelativeValue = @(-offset);
    
    yAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                            type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    yAxis.minimumRelativeValue = @(-offset);
    yAxis.maximumRelativeValue = @(offset);
    
    UIMotionEffectGroup *group = [[UIMotionEffectGroup alloc] init];
    group.motionEffects        = @[xAxis, yAxis];
    
    [self addMotionEffect:group];
}

@end
