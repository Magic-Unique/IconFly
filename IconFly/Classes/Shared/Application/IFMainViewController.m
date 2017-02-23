//
//  IFMainViewController.m
//  IconFly
//
//  Created by 吴双 on 2017/2/22.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "IFMainViewController.h"
#import "UIImage+Contents.h"

#define iPhone [UIDevice currentDevice]

@interface IFMainViewController ()

@property (nonatomic, strong) UIImage *back;

@end

@implementation IFMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor blackColor];
	
	UIImage *back = [UIImage imageWithContentsOfFile:[NSBundle.mainBundle pathForResource:@"screen" ofType:@"png"]];
	_back = back;

	[self makeImageViewWithBounds:CGRectMake(0, back.size.height - 192, back.size.width, 192)];
	[self makeImageViewWithBounds:CGRectMake(0, 40, back.size.width, back.size.height - 192 - 40)];
	
	dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//		exit(0);
	});
	
	CGRectMake(54, 40 + 16, 120, 120 + 40);
	
	UIPageControl *pageControl = [[UIPageControl alloc] init];
	pageControl.numberOfPages = 4;
	pageControl.currentPage = 2;
	pageControl.frame = CGRectMake(0, self.view.bounds.size.height - 96 - 15, self.view.bounds.size.width, 15);
	[self.view addSubview:pageControl];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

- (UIImageView *)makeImageViewWithBounds:(CGRect)bounds {
	UIImage *image = [self.back imageWithBounds:bounds];
	UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
	bounds.origin.x /= 2;
	bounds.origin.y /= 2;
	bounds.size.width /= 2;
	bounds.size.height /= 2;
	imageView.frame = bounds;
	imageView.alpha = 0.5;
	[self.view addSubview:imageView];
	return imageView;
}

@end
