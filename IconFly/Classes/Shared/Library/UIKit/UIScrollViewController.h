//
//  UIScrollViewController.h
//  IconFly
//
//  Created by 吴双 on 2017/2/24.
//  Copyright © 2017年 unique. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong, readonly) UIScrollView *scrollView;

@end
