//
//  UIView+ScreensShot.m
//  SaveImage
//
//  Created by LeiLuRong on 16/7/13.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "UIView+ScreensShot.h"

@implementation UIView (ScreensShot)

- (UIImage *)screenShot {
    
    if (self && self.frame.size.height && self.frame.size.width) {
        
        UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0);
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return image;
        
    } else {
        
        return nil;
    }
}

@end
