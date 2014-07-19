//
//  BIDSingleComponentPickerViewController.h
//  uicontrol
//
//  Created by danio on 14-7-19.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDSingleComponentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *singlePicker;

- (IBAction)buttonPressed:(UIButton *)sender;

@property (strong, nonatomic) NSArray *characterNames;
@end
