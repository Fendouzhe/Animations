//
//  UIView+ScreensShot.h
//  SaveImage
//
//  Created by LeiLuRong on 16/7/13.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ScreensShot)

/**
 *  无损截图
 *
 *  This function may be called from any thread of your app.
 *
 *  @return 返回生成的图片
 */
- (UIImage *)screenShot;

@end
