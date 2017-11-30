//
//  HeaderIconCell.h
//  Animations
//
//  Created by LeiLuRong on 2016/11/24.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "CustomCell.h"

@interface HeaderIconCell : CustomCell

@property (class, nonatomic, readonly) CGFloat cellHeight;

- (void)offsetY:(CGFloat)offsetY;

@end
