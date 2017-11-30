//
//  TapDrawObject.h
//  TapDrawImageView
//
//  Created by LeiLuRong on 16/5/9.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TapDrawObject : NSObject

@property (nonatomic, strong)  UIColor  *fillColor;
@property (nonatomic, strong)  UIColor  *strokeColor;
@property (nonatomic)          CGFloat   lineWidth;

@end
