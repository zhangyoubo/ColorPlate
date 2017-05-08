//
//  SevenColorView.h
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SevenColorViewDelegate
@required

@optional

- (void)sevenColorViewChangeColor:(UIColor *)_color;

@end

@interface SevenColorView : UIView{
    
    UIButton *btn[7];
    
    UILabel *label[7];
}

@property (strong, nonatomic) id<SevenColorViewDelegate> sevenColorViewDelegate;

@end
