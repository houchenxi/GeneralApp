//
//  AppDelegate.m
//  GeneralApp
//
//  Created by houchenxi  on 14-12-28.
//  Copyright (c) 2014年 haotwo.com. All rights reserved.
//

#import "AppDelegate.h"
#import "SwitchViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // 创建根控制器实例，并且赋给AppDelegate的属性保存
    self.switchViewController = [[SwitchViewController alloc]
                                 initWithNibName:@"SwitchViewController" bundle:nil];

    // 从SwitchViewController.xib中加载视图
    UIView* switchView = self.switchViewController.view;
    
    // 修改属性，以免状态栏覆盖这个视图
    CGRect switchViewFrame = switchView.frame;
    // 使视图紧靠状态栏底部
    switchViewFrame.origin.y += [UIApplication
                                 sharedApplication].statusBarFrame.size.height;
    // 设置根控制器控制的视图
    switchView.frame = switchViewFrame;
    
    // 根控制器的关联视图设置完毕，设置到窗口属性的根控制器属性
    self.window.rootViewController = self.switchViewController;
    
    // 设置窗口背景色为白色
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
