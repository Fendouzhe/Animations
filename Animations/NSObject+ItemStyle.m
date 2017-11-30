//
//  NSObject+ItemStyle.m
//  Animations
//
//  Created by LeiLuRong on 2017/7/27.
//  Copyright © 2017年 LeiLuRong. All rights reserved.
//

#import "NSObject+ItemStyle.h"
#import <objc/runtime.h>

@implementation NSObject (ItemStyle)

- (void)setItemStyle:(ItemStyle *)itemStyle {
    
    objc_setAssociatedObject(self, @selector(itemStyle), itemStyle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    itemStyle.source = self;
    [itemStyle makeStyleEffective];
}

- (ItemStyle *)itemStyle {
    
    return objc_getAssociatedObject(self, _cmd);
}

@end
