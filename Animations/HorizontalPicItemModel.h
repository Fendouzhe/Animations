//
//  HorizontalPicItemModel.h
//  Animations
//
//  Created by LeiLuRong on 2017/7/11.
//  Copyright © 2017年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HorizontalPicItemModel : NSObject

@property (nonatomic, strong) UIImage *iconImage;

+ (instancetype)horizontalPicItemModelWithIconImage:(UIImage *)image;

@end
