//
//  UIView+UserInteraction.h
//  TechCode
//
//  Created by LeiLuRong on 16/4/29.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UserInteraction)

/**
 *  [Producer] Enable user interaction.
 */
- (void)enabledUserInteraction;

/**
 *  [Consumer] Disable user interaction.
 */
- (void)disableUserInteraction;

@end
