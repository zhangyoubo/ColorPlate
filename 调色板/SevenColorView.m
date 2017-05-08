//
//  SevenColorView.m
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import "SevenColorView.h"

@implementation SevenColorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        NSArray *array = [NSArray arrayWithObjects:@"红", @"橙", @"黄", @"绿", @"蓝", @"靛", @"紫", nil];

        for (int i=1; i<8; i++) {

            btn[i] = [UIButton buttonWithType:UIButtonTypeCustom];
            
            btn[i].frame = CGRectMake(5+(i-1)*45, 0, 40, 30);
         
            btn[1].backgroundColor = [UIColor redColor];
            btn[2].backgroundColor = [UIColor orangeColor];
            btn[3].backgroundColor = [UIColor yellowColor];
            btn[4].backgroundColor = [UIColor greenColor];
            btn[5].backgroundColor = [UIColor blueColor];
            btn[6].backgroundColor = [UIColor cyanColor];
            btn[7].backgroundColor = [UIColor purpleColor];

            btn[i].tag = i;
            
            [btn[i] addTarget:self action:@selector(btn:) forControlEvents:UIControlEventTouchUpInside];
            
            [self addSubview:btn[i]];
            
            label[i] = [[UILabel alloc]init];
            
            label[i].frame = CGRectMake(15+(i-1)*45, 35, 20, 30);
            
            label[i].backgroundColor = [UIColor grayColor];
            
            
            label[1].textColor = [UIColor redColor];
            label[2].textColor = [UIColor orangeColor];
            label[3].textColor = [UIColor yellowColor];
            label[4].textColor = [UIColor greenColor];
            label[5].textColor = [UIColor blueColor];
            label[6].textColor = [UIColor cyanColor];
            label[7].textColor = [UIColor purpleColor];
            
            label[i].text = [array objectAtIndex:(i-1)];
            
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
- (void)btn:(id)sender{

    UIButton *b = (UIButton *)sender;

    switch (b.tag) {
        case 1:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor redColor]];
            break;
        case 2:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor orangeColor]];
            break;
        case 3:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor yellowColor]];
            break;
        case 4:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor greenColor]];
            break;
        case 5:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor blueColor]];
            break;
        case 6:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor cyanColor]];
            break;
        case 7:
            [self.sevenColorViewDelegate sevenColorViewChangeColor:[UIColor purpleColor]];
            break;
        default:
            break;
    }
    
}
@end
