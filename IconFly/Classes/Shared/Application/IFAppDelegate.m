//
//  IFAppDelegate.m
//  IconFly
//
//  Created by 吴双 on 2017/2/22.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "IFAppDelegate.h"

@implementation IFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	Class ViewController = NSClassFromString(@"IFSpringboardViewController");
	self.window.rootViewController = [ViewController new];
	[self.window makeKeyAndVisible];
	return YES;
}

- (UIWindow *)window {
	if (!_window) {
		_window = [UIWindow.alloc initWithFrame:UIScreen.mainScreen.bounds];
	}
	return _window;
}

@end
