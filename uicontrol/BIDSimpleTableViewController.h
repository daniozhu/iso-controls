//
//  BIDSimpleTableViewController.h
//  uicontrol
//
//  Created by danio on 14-7-26.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDSimpleTableViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSArray *dwarves;

@property (copy, nonatomic) NSArray *computers;

@end
