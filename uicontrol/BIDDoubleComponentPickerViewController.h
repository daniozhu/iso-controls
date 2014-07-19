//
//  BIDDoubleComponentPickerViewController.h
//  uicontrol
//
//  Created by danio on 14-7-19.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent   0
#define kBreadComponent     1

@interface BIDDoubleComponentPickerViewController : UIViewController
<UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) NSArray *fillingTypes;

@property (strong, nonatomic) NSArray *breadTypes;

@property (strong, nonatomic) IBOutlet UIPickerView *doublePicker;

- (IBAction)buttonPressed;
@end
