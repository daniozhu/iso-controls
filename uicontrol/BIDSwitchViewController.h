//
//  BIDSwitchViewController.h
//  uicontrol
//
//  Created by danio on 14-7-16.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BIDBlueViewController;
@class BIDYellowViewController;

@interface BIDSwitchViewController : UIViewController

@property (strong, nonatomic) BIDBlueViewController *blueViewController;
@property (strong, nonatomic) BIDYellowViewController *yellowViewContorller;

- (IBAction)switchViews:(id)sender;

@end
