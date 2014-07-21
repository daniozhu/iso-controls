//
//  BIDCustomPickerViewController.h
//  uicontrol
//
//  Created by danio on 14-7-19.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDCustomPickerViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *winLable;
@property (strong, nonatomic) NSArray *images;
@property (strong, nonatomic) IBOutlet UIButton *button;

-(IBAction)spin;

@end
