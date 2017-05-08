//
//  ColorDisplayView.h
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Palette.h"
#import "SevenColorView.h"

@protocol ColorDisplayViewDelegate
@required

@optional

- (void)rgb:(UIColor *)_color;

@end

@interface ColorDisplayView : UIView<PaletteDelegate,SevenColorViewDelegate>
@property (strong, nonatomic) id<ColorDisplayViewDelegate> colorDisplayViewDelegate;

@end
