//
//  RGBView.m
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import "RGBView.h"

@implementation RGBView
@synthesize red,green,blue;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        NSArray *array = [NSArray arrayWithObjects:@"R:",@"G:",@"B:", nil];
        
        for (int i=0; i<3; i++) {
            l[i] = [[UILabel alloc]init];
            l[i].frame = CGRectMake(10, 10+i*25, 20, 20);
            l[i].backgroundColor = [UIColor grayColor];
            l[i].text = [array objectAtIndex:i];
            l[0].textColor = [UIColor redColor];
            l[1].textColor = [UIColor greenColor];
            l[2].textColor = [UIColor blueColor];
            [self addSubview:l[i]];
            
            
            label[i] = [[UILabel alloc]init];
            label[i].frame = CGRectMake(30, 10+i*25, 80, 20);
            label[i].backgroundColor = [UIColor grayColor];
            label[i].text = @"0.00";
            label[0].textColor = [UIColor redColor];
            label[1].textColor = [UIColor greenColor];
            label[2].textColor = [UIColor blueColor];
            [self addSubview:label[i]];
        }
        
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
- (void)rgb:(UIColor *)_color{
    CGFloat R, G, B;
    
    
    CGColorRef color = [_color CGColor];
    int numComponents = CGColorGetNumberOfComponents(color);
    
    if (numComponents == 4)
    {
        const CGFloat *components = CGColorGetComponents(color);
        R = components[0];
        G = components[1];
        B = components[2];

        int r = R*255;
        int g = G*255;
        int b = B*255;
        
        label[0].text = [NSString stringWithFormat:@"%d",r];
        label[1].text = [NSString stringWithFormat:@"%d",g];
        label[2].text = [NSString stringWithFormat:@"%d",b];
        
    }

}
@end
