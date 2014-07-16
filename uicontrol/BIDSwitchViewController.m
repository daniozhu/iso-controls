//
//  BIDSwitchViewController.m
//  uicontrol
//
//  Created by danio on 14-7-16.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "BIDSwitchViewController.h"
#import "BIDYellowViewController.h"
#import "BIDBlueViewController.h"

@interface BIDSwitchViewController ()

@end

@implementation BIDSwitchViewController

- (IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    if(self.yellowViewContorller.view.superview == nil)
    {
        if(self.yellowViewContorller == nil)
        {
            self.yellowViewContorller =
            [[BIDYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewContorller.view atIndex:0];
    } else
    {
        if(self.blueViewController == nil)
        {
            self.blueViewController =
            [[BIDBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        
        [self.yellowViewContorller.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
    [UIView commitAnimations];
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
    self.blueViewController = [[BIDBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    
    [self.view insertSubview: self.blueViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if(self.blueViewController.view.superview == nil)
    {
        self.blueViewController = nil;
    }
    else
    {
        self.yellowViewContorller = nil;
    }
}

@end
