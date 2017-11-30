//
//  TapAnimationModel.h
//  Animations
//
//  Created by LeiLuRong on 15/11/27.
//  Copyright © 2015年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TapAnimationModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic)         BOOL      selected;

+ (instancetype)modelWithName:(NSString *)name selected:(BOOL)selected;

@end
