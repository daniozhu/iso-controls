//
//  BIDNamAndColorCell.m
//  uicontrol
//
//  Created by danio on 14-8-2.
//  Copyright (c) 2014年 danio. All rights reserved.
//

#import "BIDNamAndColorCell.h"

@implementation BIDNamAndColorCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setName:(NSString *)n
{
    if(![n isEqualToString:_name])
    {
        _name = [n copy];
        _nameValue.text = _name;
    }
}

-(void)setColor:(NSString *)c
{
    if(![c isEqualToString:_color])
    {
        _color = [c copy];
        _colorValue.text = _color;
    }
}
@end
