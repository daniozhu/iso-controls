//
//  BIDDependentComponentPickerViewController.h
//  uicontrol
//
//  Created by danio on 14-7-19.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent 0
#define kZipComponent   1

@interface BIDDependentComponentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;

@property (strong, nonatomic) IBOutlet UIPickerView *dependentPicker;

- (IBAction)buttonPressed;

@end
