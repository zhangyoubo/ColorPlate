//
//  ViewController.m
//  调色板
//
//  Created by long on 13-6-18.
//  Copyright (c) 2013年 long. All rights reserved.
//


#define kColor(r,g,b) [UIColor colorWithRed:r green:g blue:b alpha:1]

#import "ViewController.h"
#import <AdSupport/AdSupport.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *adid = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];

    
    
    self.view.backgroundColor = [UIColor grayColor];
    palette = [[Palette alloc]initWithFrame:CGRectMake(40, 20, 240, 240)];

    
    
    [self.view addSubview:palette];
    
    colorDisplayView = [[ColorDisplayView alloc]initWithFrame:CGRectMake(20, 20, 40, 40)];
    
    palette.paletteDelegate = colorDisplayView;
    
    [self.view addSubview:colorDisplayView];
    
    
    sevenColorView = [[SevenColorView alloc]initWithFrame:CGRectMake(0, 300, 320, 65)];
    
    sevenColorView.sevenColorViewDelegate = colorDisplayView;
    
    [self.view addSubview:sevenColorView];
    
    rgbView = [[RGBView alloc]initWithFrame:CGRectMake(0, 370, 200, 80)];
    
    colorDisplayView.colorDisplayViewDelegate = rgbView;
    
    
    [self.view addSubview:rgbView];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
