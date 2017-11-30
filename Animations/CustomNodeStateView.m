//
//  CustomNodeStateView.m
//  InfiniteLoopView
//
//  Created by LeiLuRong on 16/5/6.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "CustomNodeStateView.h"

@implementation CustomNodeStateView

- (void)changeToState:(EInfiniteLoopNodeState)state animated:(BOOL)animated {

    [NSException raise:@"CustomNodeStateView error"
                format:@"You must overwrite this method."];
}

@end
