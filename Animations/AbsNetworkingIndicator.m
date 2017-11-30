//
//  AbsNetworkingIndicator.m
//  AFNetworking-3.x
//
//  Created by LeiLuRong on 16/3/12.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "AbsNetworkingIndicator.h"

@implementation AbsNetworkingIndicator

+ (void)showNetworkActivityIndicator:(BOOL)show {
    
    [NSException raise:@"NetworkingIndicator showNetworkActivityIndicator:"
                format:@"You must override this method."];
}

@end
