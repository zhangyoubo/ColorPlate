//
//  Palette.h
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PaletteDelegate
@required

@optional

- (void)changeColor:(UIColor *)_color;

@end

@interface Palette : UIView{
    UIImageView *imageView;
    UIView *v;
}

@property(strong,nonatomic)UIImage *image;

@property (strong, nonatomic) id<PaletteDelegate> paletteDelegate;

- (void)logTouchInfo:(UITouch *)touch;

@end
