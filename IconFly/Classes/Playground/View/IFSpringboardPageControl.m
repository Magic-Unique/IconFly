//
//  IFSpringboardPageControl.m
//  IconFly
//
//  Created by 吴双 on 2017/2/24.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "IFSpringboardPageControl.h"

@implementation IFSpringboardPageControl

- (instancetype)initWithContents:(IFSpringboardContents *)contents {
	self = [super init];
	if (self) {
		self.numberOfPages = contents.count + 1;
		self.currentPage = 1;
	}
	return self;
}

@end
