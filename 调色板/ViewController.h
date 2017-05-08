//
//  ViewController.h
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Palette.h"
#import "ColorDisplayView.h"
#import "SevenColorView.h"
#import "RGBView.h"


@interface ViewController : UIViewController{

    Palette *palette;
    ColorDisplayView *colorDisplayView;
    SevenColorView *sevenColorView;
    RGBView *rgbView;
}

@end
