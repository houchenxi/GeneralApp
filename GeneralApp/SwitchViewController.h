//
//  SwitchViewController.h
//  GeneralApp
//
//  Created by houchenxi  on 14-12-28.
//  Copyright (c) 2014年 haotwo.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlueViewController;
@class YellowViewController;

@interface SwitchViewController : UIViewController

@property (strong, nonatomic)  BlueViewController   *blueViewController;
@property (strong, nonatomic)  YellowViewController *yellowViewController;

- (IBAction)switchViews :(id)sender;

- (void) UpdateSubView: (UIViewController*)newCtrl oldCtrl: (UIViewController*) old;

@end
