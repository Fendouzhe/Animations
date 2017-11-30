//
//  CAGradientView.h
//  MaskView
//
//  Created by LeiLuRong on 16/2/15.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CAGradientView : UIView

/**
 *  CAGradientLayer's colors.
 */
@property (nonatomic, strong) NSArray  *colors;

/**
 *  CAGradientLayer's locations.
 */
@property (nonatomic, strong) NSArray  *locations;

/**
 *  CAGradientLayer's startPoint.
 */
@property (nonatomic)         CGPoint   startPoint;

/**
 *  CAGradientLayer's endPoint.
 */
@property (nonatomic)         CGPoint   endPoint;

@end
