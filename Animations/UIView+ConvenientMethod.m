//
//  UIView+ConvenientMethod.m
//  TechCode
//
//  Created by LeiLuRong on 16/5/13.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "UIView+ConvenientMethod.h"

@implementation UIView (ConvenientMethod)

+ (UIView *)lineViewWithFrame:(CGRect)frame color:(UIColor *)color {
    
    UIView *line         = [[UIView alloc] initWithFrame:frame];
    line.backgroundColor = color;
    
    return line;
}

+ (UIView *)lineViewWithFrame:(CGRect)frame color:(UIColor *)color tag:(NSInteger)tag {

    UIView *line         = [[UIView alloc] initWithFrame:frame];
    line.backgroundColor = color;
    line.tag             = tag;
    
    return line;
}

@end
