//
//  RGBView.h
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDisplayView.h"
@interface RGBView : UIView<ColorDisplayViewDelegate>
{
    UILabel *l[3];
    UILabel *label[3];
}

@property(assign)CGFloat red;
@property(assign)CGFloat green;
@property(assign)CGFloat blue;
@end
