//
//  CustomNodeStateView.h
//  InfiniteLoopView
//
//  Created by LeiLuRong on 16/5/6.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    
    /**
     Normal State.
     */
    kInfiniteLoopNormalState,
    
    /**
     Highlighted State.
     */
    kInfiniteLoopHighlightedState,
    
} EInfiniteLoopNodeState;

@interface CustomNodeStateView : UIView

/**
 *  Change the view to specified state.
 *
 *  @param state    EInfiniteLoopNodeState.
 *  @param animated Animated or not.
 */
- (void)changeToState:(EInfiniteLoopNodeState)state animated:(BOOL)animated;

@end
