//
//  InfiniteLoopViewProtocol.h
//  InfiniteLoopView
//
//  Created by LeiLuRong on 16/5/5.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol InfiniteLoopViewProtocol <NSObject>

@required

/**
 *  Get the data object.
 *
 *  @return The data object.
 */
- (id)dataObject;

/**
 *  Get the Image url string.
 *
 *  @return Image url string.
 */
- (NSString *)imageUrlString;

@end
