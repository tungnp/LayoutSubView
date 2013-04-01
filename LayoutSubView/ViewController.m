//
//  ViewController.m
//  LayoutSubView
//
//  Created by stevie nguyen on 4/1/13.
//  Copyright (c) 2013 tung nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

NSArray* imageViews;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"troll1.jpg"]];
    [imageView1 setFrame:CGRectMake(20, 20, 160, 250)];
    UIImageView* imageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"troll2.jpg"]];
    [imageView2 setFrame:CGRectMake(200, 20, 100, 100)];
    UIImageView* imageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"troll3.jpg"]];
    [imageView3 setFrame:CGRectMake(200, 170, 100, 100)];
    UIImageView* imageView4 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"troll4.jpg"]];
    [imageView4 setFrame:CGRectMake(20, 280, 280, 80)];
    UIImageView* imageView5 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"troll5.jpg"]];
    [imageView5 setFrame:CGRectMake(20, 360, 280, 80)];
    imageViews = @[imageView1,imageView2,imageView3,imageView4,imageView5];
    for ( UIImageView* object in imageViews) {
        [self.view addSubview:object];
        NSLog(@"%@",object.image);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    if (orientation == UIDeviceOrientationPortrait) {
        [imageViews[0] setFrame:CGRectMake(20,  20,  160, 250)];
        [imageViews[1] setFrame:CGRectMake(200, 20,  100, 100)];
        [imageViews[2] setFrame:CGRectMake(200, 170, 100, 100)];
        [imageViews[3] setFrame:CGRectMake(20,  280, 280, 80)];
        [imageViews[4] setFrame:CGRectMake(20,  360, 280, 80)];
    }
    else if (orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight){
        [imageViews[0] setFrame:CGRectMake(20,  20,  200, 260)];
        [imageViews[1] setFrame:CGRectMake(230, 20,  100, 100)];
        [imageViews[2] setFrame:CGRectMake(360, 20,  100, 100)];
        [imageViews[3] setFrame:CGRectMake(230, 130, 230, 70)];
        [imageViews[4] setFrame:CGRectMake(230, 210, 230, 70)];
    }
}

@end
