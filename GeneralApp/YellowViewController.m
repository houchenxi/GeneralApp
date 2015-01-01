//
//  YellowViewController.m
//  GeneralApp
//
//  Created by houchenxi  on 14-12-28.
//  Copyright (c) 2014年 haotwo.com. All rights reserved.
//

#import "YellowViewController.h"

@interface YellowViewController ()

@end

@implementation YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)buttonPressed{
    
    [[[UIAlertView alloc] initWithTitle:
      
      @"按钮按下的标题"
        message:@"这是按钮按下的消息"
        delegate:nil
      cancelButtonTitle:@"关闭"
      otherButtonTitles:nil] show];

}

@end
