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
