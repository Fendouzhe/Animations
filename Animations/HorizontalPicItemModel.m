//
//  HorizontalPicItemModel.m
//  Animations
//
//  Created by LeiLuRong on 2017/7/11.
//  Copyright © 2017年 LeiLuRong. All rights reserved.
//

#import "HorizontalPicItemModel.h"

@implementation HorizontalPicItemModel

+ (instancetype)horizontalPicItemModelWithIconImage:(UIImage *)image {
    
    HorizontalPicItemModel *model = [[self class] new];
    model.iconImage               = image;
    
    return model;
}

@end
