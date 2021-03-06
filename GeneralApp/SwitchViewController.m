//
//  SwitchViewController.m
//  GeneralApp
//
//  Created by houchenxi  on 14-12-28.
//  Copyright (c) 2014年 haotwo.com. All rights reserved.
//

#import "SwitchViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 完成主控制器视图加载后
    
    // 加载蓝色视图
    self.blueViewController = [ [BlueViewController alloc]
                               initWithNibName:@"BlueViewController" bundle:nil ];
    
    // 将蓝色视图放入主控制器视图显示出来
    [self.view insertSubview:self.blueViewController.view atIndex:0 ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - 此函数用来切换主视图的子视图
- (IBAction)switchViews:(id)sender {
    
    // 增加切换动画
    // 设置动画的变化速度特征和播放时间长度
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration: 1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    if (self.yellowViewController.view.superview == nil) {
        
        // 加载黄色视图的代码
        if (self.yellowViewController == nil) {
            self.yellowViewController =
            [ [YellowViewController alloc] initWithNibName:@"YellowViewController" bundle:nil ];
        }
        
        // 增加切换动画
        // 设置动画的迁移类型为从右翻转
        [UIView setAnimationTransition:
            UIViewAnimationTransitionFlipFromRight
                               forView:self.view
                                cache: YES];
        
        // 对视图进行替换，把蓝色替换为黄色
        [self UpdateSubView: self.yellowViewController oldCtrl: self.blueViewController];
    } else {
        // 加载蓝色视图的代码
        if (self.blueViewController == nil) {
            self.blueViewController =
            [ [BlueViewController alloc] initWithNibName:@"BlueViewController" bundle:nil ];
        }
        
        // 增加切换动画
        // 设置动画的迁移类型为从左翻转
        [UIView setAnimationTransition:
            UIViewAnimationTransitionFlipFromLeft
                               forView:self.view
                                cache: YES];
         
        // 对视图进行替换，把黄色替换为蓝色
        [self UpdateSubView: self.blueViewController oldCtrl: self.yellowViewController];
    }
    
    // 增加切换动画
    // 动画提交给IOS系统应用
    [UIView commitAnimations];
}

#pragma mark - 此函数仅供 switchViews调用
- (void) UpdateSubView: (UIViewController*)newCtrl oldCtrl: (UIViewController*) old {
        // 移除old控制器的视图
        [old.view removeFromSuperview];
        // 替换为newCtrl控制器的视图
        [self.view insertSubview: newCtrl.view atIndex:0];
}

@end
