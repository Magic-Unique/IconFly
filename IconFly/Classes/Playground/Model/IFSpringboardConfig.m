//
//  IFSpringboardConfig.m
//  IconFly
//
//  Created by 吴双 on 2017/2/23.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "IFSpringboardConfig.h"

#define MAKE_CONFIG [NSDictionary dictionaryWithContentsOfFile:[NSBundle.mainBundle pathForResource:@"4_7" ofType:@"plist"]]

@implementation IFSpringboardConfigItem

- (instancetype)initWithJSON:(NSDictionary<NSString *, NSNumber *> *)JSON {
	self = [super init];
	if (self) {
#define Set(k1, k2) \
_frameInImage.k1.k2 = JSON[@#k2].floatValue;\
_frameInLayer.k1.k2 = _frameInImage.k1.k2 / [UIScreen mainScreen].scale
		Set(origin, x);
		Set(origin, y);
		Set(size, width);
		Set(size, height);
#undef Set
	}
	return self;
}

@end

@implementation IFSpringboardConfig

+ (instancetype)sharedConfig {
	static IFSpringboardConfig *_sharedConfig = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sharedConfig = [[self alloc] init];
	});
	return _sharedConfig;
}

- (instancetype)init {
	self = [super init];
	if (self) {
		NSDictionary *config = MAKE_CONFIG;
		_statusBar = [[IFSpringboardConfigItem alloc] initWithJSON:config[@"statusBar"]];
		_iconScrollView = [[IFSpringboardConfigItem alloc] initWithJSON:config[@"iconScrollView"]];
		_pageControl = [[IFSpringboardConfigItem alloc] initWithJSON:config[@"pageControl"]];
		_dock = [[IFSpringboardConfigItem alloc] initWithJSON:config[@"dock"]];
	}
	return self;
}

@end
