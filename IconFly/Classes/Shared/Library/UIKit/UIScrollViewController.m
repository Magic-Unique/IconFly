//
//  UIScrollViewController.m
//  IconFly
//
//  Created by 吴双 on 2017/2/24.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "UIScrollViewController.h"

@interface UIScrollViewController ()

@end

@implementation UIScrollViewController

- (void)loadView {
	UIScrollView *scrollView = [UIScrollView new];
	scrollView.delegate = self;
	self.view = scrollView;
}

- (UIScrollView *)scrollView {
	return (UIScrollView *)self.view;
}

@end
