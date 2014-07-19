//
//  BIDSingleComponentPickerViewController.m
//  uicontrol
//
//  Created by danio on 14-7-19.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "BIDSingleComponentPickerViewController.h"

@interface BIDSingleComponentPickerViewController ()

@end

@implementation BIDSingleComponentPickerViewController

- (IBAction)buttonPressed:(UIButton *)sender
{
    NSInteger row = [self.singlePicker selectedRowInComponent:0];
    NSString *selected = self.characterNames[row];
    NSString *title = [[NSString alloc]initWithFormat:
                          @"You selected %@!",selected];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title
                                                   message:@"Thank you for choosing"
                                                  delegate:nil
                                         cancelButtonTitle:@"You're Wecome"
                                         otherButtonTitles: nil];
    [alert show];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.characterNames = @[@"Luke", @"Leia", @"Han", @"Chewbacca",
                            @"Artoo", @"Threepio", @"Lando"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Picker Date Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.characterNames count];
}

#pragma mark -
#pragma mark Picker Delegate Methods

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.characterNames[row];
}

@end
