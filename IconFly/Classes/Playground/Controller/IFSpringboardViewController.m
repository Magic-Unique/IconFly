//
//  IFSpringboardViewController.m
//  IconFly
//
//  Created by 吴双 on 2017/2/23.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "IFSpringboardViewController.h"

#import "IFSpringboardConfig.h"

@interface IFSpringboardViewController ()
{
	IFIconScrollViewController *_iconScrollViewController;
	IFSpringboardPageControl *_pageControl;
	IFSpringboardDockView *_dockView;
	IFSpringboardContents *_images;
}

@property (nonatomic, strong) IFSpringboardConfig *config;

@end

@implementation IFSpringboardViewController

- (instancetype)init {
	self = [super init];
	if (self) {
	}
	return self;
}

- (void)viewDidLayoutSubviews {
	[super viewDidLayoutSubviews];
	self.iconScrollViewController.view.frame = self.config.iconScrollView.frameInLayer;
	self.pageControl.frame = self.config.pageControl.frameInLayer;
	self.dockView.frame = self.config.dock.frameInLayer;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
	return UIStatusBarStyleLightContent;
}

- (IFIconScrollViewController *)iconScrollViewController {
	if (!_iconScrollViewController) {
		_iconScrollViewController = [[IFIconScrollViewController alloc] init];
		[self addChildViewController:_iconScrollViewController];
		[self.view addSubview:_iconScrollViewController.view];
	}
	return _iconScrollViewController;
}

- (IFSpringboardPageControl *)pageControl {
	if (!_pageControl) {
		_pageControl = [[IFSpringboardPageControl alloc] initWithContents:self.images];
		[self.view addSubview:_pageControl];
	}
	return _pageControl;
}

- (IFSpringboardDockView *)dockView {
	if (!_dockView) {
		_dockView = [[IFSpringboardDockView alloc] initWithContents:self.images];
		[self.view addSubview:_dockView];
	}
	return _dockView;
}

- (IFSpringboardConfig *)config {
	if (!_config) {
		_config = [IFSpringboardConfig sharedConfig];
	}
	return _config;
}

- (IFSpringboardContents *)images {
	if (!_images) {
		NSMutableArray *list = [NSMutableArray array];
		
		for (int i = 0; i < 3; i++) {
			NSString *imageName = [NSString stringWithFormat:@"screen%d", i];
			imageName = [NSBundle.mainBundle pathForResource:imageName ofType:@"PNG"];
			UIImage *image = [UIImage imageWithContentsOfFile:imageName];
			[list addObject:image];
		}
		
		_images = [list copy];
	}
	return _images;
}

@end
