//
//  BIDNamAndColorCell.h
//  uicontrol
//
//  Created by danio on 14-8-2.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDNamAndColorCell : UITableViewCell

@property(copy, nonatomic) NSString *name;
@property(copy, nonatomic) NSString *color;

@property(strong, nonatomic) IBOutlet UILabel *nameValue;
@property(strong, nonatomic) IBOutlet UILabel *colorValue;
@end
