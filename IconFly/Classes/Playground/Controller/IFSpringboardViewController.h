//
//  IFSpringboardViewController.h
//  IconFly
//
//  Created by 吴双 on 2017/2/23.
//  Copyright © 2017年 unique. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IFIconScrollViewController.h"
#import "IFSpringboardPageControl.h"
#import "IFSpringboardDockView.h"

@interface IFSpringboardViewController : UIViewController

@property (nonatomic, strong, readonly) IFIconScrollViewController *iconScrollViewController;

@property (nonatomic, strong, readonly) IFSpringboardPageControl *pageControl;

@property (nonatomic, strong, readonly) IFSpringboardDockView *dockView;

@property (nonatomic, strong, readonly) IFSpringboardContents *images;

@end
