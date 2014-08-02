//
//  zjhAppDelegate.h
//  uicontrol
//
//  Created by danio on 14-7-2.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BIDSwitchViewController;
@class BIDSimpleTableViewController;

@interface zjhAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BIDSwitchViewController *switchViewController;

@property (strong, nonatomic) IBOutlet UITabBarController *rootController;

@property (strong, nonatomic) BIDSimpleTableViewController *simpleTableViewController;

@end
