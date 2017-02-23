//
//  IFSpringboardDockView.m
//  IconFly
//
//  Created by 吴双 on 2017/2/23.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "IFSpringboardDockView.h"
#import "UIImage+Contents.h"
#import "IFSpringboardConfig.h"

@implementation IFSpringboardDockView

- (instancetype)initWithContents:(IFSpringboardContents *)contents {
	self = [super init];
	if (self) {
		UIImage *image = contents.firstObject;
		self.image = [image imageWithBounds:[IFSpringboardConfig sharedConfig].dock.frameInImage];
	}
	return self;
}

@end
