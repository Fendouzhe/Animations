//
//  AnimationsListViewNavigationController.m
//  Animations
//
//  Created by LeiLuRong on 2016/12/16.
//  Copyright © 2016年 LeiLuRong. All rights reserved.
//

#import "AnimationsListViewNavigationController.h"
#import "AppleSystemService.h"
#import "UIView+AnimationProperty.h"
#import "DefaultNotificationCenter.h"

@interface AnimationsListViewNavigationController ()

@end

@implementation AnimationsListViewNavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // LaunchImage
    UIImageView *iconImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    iconImageView.image        = [AppleSystemService launchImage];
    [self.view addSubview:iconImageView];
    
    // Do animation
    [UIView animateKeyframesWithDuration:1.f delay:2.f options:0 animations:^{
        
        iconImageView.scale = 1.2f;
        iconImageView.alpha = 0.f;
        
    } completion:^(BOOL finished) {
        
        [DefaultNotificationCenter postEventToNotificationName:noti_showHomePageTableView object:nil];
        [iconImageView removeFromSuperview];
    }];
}

@end
