//
//  PictureModel.m
//  SDWebImageLoadImageAnimation
//
//  Created by LeiLuRong on 15/4/30.
//  Copyright (c) 2015年 LeiLuRong. All rights reserved.
//

#import "PictureModel.h"

@implementation PictureModel

+ (instancetype)pictureModelWithPictureUrl:(NSURL *)url haveAnimated:(BOOL)haveAnimated {
    
    PictureModel *model = [PictureModel new];
    model.pictureUrl    = url;
    
    return model;
}

@end
