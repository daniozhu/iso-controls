//
//  BIDSimpleTableViewController.m
//  uicontrol
//
//  Created by danio on 14-7-26.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "BIDSimpleTableViewController.h"
#import "BIDNamAndColorCell.h"

@interface BIDSimpleTableViewController ()

@end

@implementation BIDSimpleTableViewController

static NSString *CellTableIdentifier = @"CellTableIdentifier";

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
    /*self.dwarves = @[@"SLeepy", @"Sneezy", @"Bashful", @"Happy",
                     @"Doc", @"Grumpy", @"Dopey", @"Thorin", @"Dorin",
                     @"Nori", @"Balin", @"Dwalin", @"Fili", @"Kill",
                     @"Oin", @"Gloin", @"Bitur", @"Bombur"];
     */
    self.computers = @[
                       @{@"Name" : @"MacBook", @"Color" : @"White"},
                       @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
                       @{@"Name" : @"iMac", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Mini", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Pro", @"Color" : @"Silver"},
                       ];
    
    UITableView *tableView = (id)[self.view viewWithTag:1];
    
    tableView.rowHeight = 65;
    
    UINib *nib = [UINib nibWithNibName:@"BIDNameAndColorCell" bundle:nil];
    
    [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark TableView DataSource Methods

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.computers count]; //self.dwarves.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BIDNamAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    NSDictionary *rowData = self.computers[indexPath.row];
    
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    
    return cell;
}
@end
