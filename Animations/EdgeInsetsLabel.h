//
//  EdgeInsetsLabel.h
//  TechCode
//
//  Created by LeiLuRong on 16/5/11.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EdgeInsetsLabel : UILabel

@property(nonatomic, assign) UIEdgeInsets edgeInsets;

- (void)sizeToFitWithText:(NSString *)text;

@end
