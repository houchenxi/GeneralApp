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
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)switchViews:(id)sender {
}

@end
