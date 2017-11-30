//
//  TapDrawPathManager.h
//  TapDrawImageView
//
//  Created by LeiLuRong on 16/5/9.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TapDrawObject.h"

@interface TapDrawPathManager : NSObject

@property (nonatomic, strong) UIBezierPath  *path;
@property (nonatomic, strong) NSString      *currentDrawType;

@property (nonatomic, strong) NSMutableDictionary  <NSString *, TapDrawObject *> *colorsType;

@end
