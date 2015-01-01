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
    
    // 这段代码用默认窗口的边框属性构造生成一个新的窗口
    // 从视图文件中加载出来视图（编辑器设计生成的）并在窗口中将控制该视图的控制器设置为《根控制器》（关联视图到窗口）
    {
        // 0. 初始化窗口属性，使之从系统取到控制设备整个窗口的句柄类型
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        
        // 1. 用控制器加载视图
        // 这段代码构造一个控制器，并且加载工程文件中的视图文件（SwitchViewController.xib这个nib文件）
        self.switchViewController = [[SwitchViewController alloc]
                                     initWithNibName:@"SwitchViewController" bundle:nil];

        // 2. 控制器定位视图
        // 这段代码将视图的左上角定位到状态栏的底边上
        {
            // 从SwitchViewController.xib中加载视图
            UIView* switchView = self.switchViewController.view;
        
            // 修改属性，以免状态栏覆盖这个视图
            CGRect switchViewFrame = switchView.frame;
            // 使视图紧靠状态栏底部
            switchViewFrame.origin.y += [UIApplication
                                         sharedApplication].statusBarFrame.size.height;
            // 设置根控制器控制的视图
            switchView.frame = switchViewFrame;
        }
        
        // 3. 设置控制器到window属性中
        // 根控制器的关联视图设置完毕，设置到窗口属性的根控制器属性
        self.window.rootViewController = self.switchViewController;
        
        // 4. （此设置比较次要）设置窗口背景色为白色
        self.window.backgroundColor = [UIColor whiteColor];
        
    }
    
    // 0. 用属性中的window属性所设置好的UIWindow对象替换老的默认UIWindow
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
