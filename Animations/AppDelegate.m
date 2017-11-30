//
//  AppDelegate.m
//  Animations
//
//  Created by LeiLuRong on 15/11/16.
//  Copyright © 2015年 LeiLuRong. All rights reserved.
//

#import "AppDelegate.h"
#import "AnimationsListController.h"
#import "AnimationsListViewNavigationController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
     Objective-c version Animations - https://github.com/LeiLuRong/Animations.git
     Swift version Animations - https://github.com/LeiLuRong/Swift-Animations
     
     Lateast no warning version : Xcode Version 8.3 (8E162)
     
     QQ    705786299
     Email LeiLuRong1987@126.com
     
     http://www.cnblogs.com/LeiLuRong/
     https://github.com/LeiLuRong
     https://github.com/LeiLuRong/YoCelsius
     
     AppStore : https://itunes.apple.com/us/app/yocelsius/id967721892?l=zh&ls=1&mt=8
     Video    : http://my.jikexueyuan.com/LeiLuRong/record/
     */
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    AnimationsListController               *viewController       = [AnimationsListController new];
    AnimationsListViewNavigationController *navigationController = [[AnimationsListViewNavigationController alloc] initWithRootViewController:viewController
                                                                                                                       setNavigationBarHidden:YES];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor    = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
        
    return YES;
}

@end
