//
//  BIDYellowViewController.m
//  uicontrol
//
//  Created by danio on 14-7-16.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "BIDYellowViewController.h"

@interface BIDYellowViewController ()

@end

@implementation BIDYellowViewController
- (IBAction)yellowButtonPressed
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Yellow view Button Pressed" message:@"You pressed the button on the yellow view" delegate:nil cancelButtonTitle:@"Yep, I did" otherButtonTitles: nil];
    
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
