//
//  BIDCustomPickerViewController.m
//  uicontrol
//
//  Created by danio on 14-7-19.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "BIDCustomPickerViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface BIDCustomPickerViewController ()

@end

@implementation BIDCustomPickerViewController
{
    SystemSoundID winSoundID;
    SystemSoundID crunchSoundID;
}

-(void)showButton
{
    self.button.hidden = NO;
}

-(void)playWinSound
{
    if(winSoundID == 0)
    {
        NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"win" withExtension:@"wav"];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &winSoundID);
    }
    AudioServicesPlaySystemSound(winSoundID);
    self.winLable.text = @"WINNING!";
    [self performSelector:@selector(showButton) withObject:nil afterDelay:1.5];
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
    self.images = @[[UIImage imageNamed:@"apple"],
                    [UIImage imageNamed:@"bar"],
                    [UIImage imageNamed:@"cherry"],
                    [UIImage imageNamed:@"crown"],
                    [UIImage imageNamed:@"lemon"],
                    [UIImage imageNamed:@"seven"]];
    
    srandom(time(NULL));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)spin
{
   // [self playWinSound];
    
    BOOL win = NO;
    int numInRow = 1;
    int lastVal = -1;
    
    for(int i=0; i<5; i++)
    {
        int newValue = random() % [self.images count];
        
        if(newValue == lastVal)
        {
            numInRow++;
        }
        else
        {
            numInRow = 1;
        }
        lastVal = newValue;
        
        [self.picker selectRow:newValue inComponent:i animated:YES];
        [self.picker reloadComponent:i];
        
        if(numInRow >= 3)
        {
            win = YES;
        }
    }
    
    if(crunchSoundID == 0)
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"crunch" ofType:@"wav"];
        NSURL *soundURL = [NSURL fileURLWithPath:path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &crunchSoundID);
    }
    AudioServicesPlaySystemSound(crunchSoundID);
    
    if(win)
    {
        //self.winLable.text = @"WIN!";
        [self performSelector:@selector(playWinSound) withObject:nil afterDelay:.5];
    }
    else
    {
        //self.winLable.text = @"";
        [self performSelector:@selector(showButton) withObject:nil afterDelay:.5];
    }
    self.button.hidden = YES;
    self.winLable.text = @"";
}

#pragma mark -
#pragma mark Picker Data Source Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 5;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.images count];
}

#pragma mark Picker Delegate Methods
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImage *image = self.images[row];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    return imageView;
}

@end
