//
//  ProgressColor.h
//  Animations
//
//  Created by LeiLuRong on 16/1/17.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ProgressColor : NSObject

/**
 *  Array of CGColors.
 */
@property (nonatomic, strong) NSArray *colors;

/**
 *  Color start point.
 */
@property (nonatomic) CGPoint startPoint;

/**
 *  Color end point.
 */
@property (nonatomic) CGPoint endPoint;

/**
 *  Animation's duration.
 */
@property (nonatomic) NSTimeInterval duration;

/**
 *  Loop move color in CGColors array.
 *
 *  @return New CGColors array.
 */
- (NSArray *)loopMove;

@end
