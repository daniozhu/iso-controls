//
//  zjhViewController.m
//  uicontrol
//
//  Created by danio on 14-7-2.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "zjhViewController.h"

@interface zjhViewController ()
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation zjhViewController

- (IBAction)buttonPressed:(UIButton *)sender
{
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.", title];
    
    //self.statusLabel.text = plainText;
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc]
                                             initWithString:plainText];
    NSDictionary *attributes = @{
                                 NSFontAttributeName :
                                     [UIFont boldSystemFontOfSize:self.statusLabel.font.pointSize]
                                 };
    NSRange nameRange = [plainText rangeOfString:title];
    [styledText setAttributes:attributes range:nameRange];
    self.statusLabel.attributedText = styledText;
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
