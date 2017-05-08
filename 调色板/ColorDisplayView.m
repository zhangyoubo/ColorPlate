//
//  ColorDisplayView.m
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import "ColorDisplayView.h"

@implementation ColorDisplayView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (void)changeColor:(UIColor *)_color{

    self.backgroundColor = _color;
    
    
    [self.colorDisplayViewDelegate rgb:_color];
    
    
    
}
- (void)sevenColorViewChangeColor:(UIColor *)_color{
    self.backgroundColor = _color;
    
    [self.colorDisplayViewDelegate rgb:_color];
}
@end
