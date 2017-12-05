//
//  InfiniteLoopCellClassProtocol.h
//  InfiniteLoopView
//
//  Created by LeiLuRong on 16/7/5.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol InfiniteLoopCellClassProtocol <NSObject>

@required

/**
 *  Cell's reuseIdentifier.
 *
 *  @return Cell's reuseIdentifier.
 */
- (NSString *)cellReuseIdentifier;

/**
 *  CustomInfiniteLoopCell's subClass.
 *
 *  @return CustomInfiniteLoopCell's subClass.
 */
- (Class)cellClass;

@end
