//
//  UIImage+Contents.m
//  IconFly
//
//  Created by 吴双 on 2017/2/22.
//  Copyright © 2017年 unique. All rights reserved.
//

#import "UIImage+Contents.h"

@implementation UIImage (Contents)

- (instancetype)imageWithBounds:(CGRect)bounds {
	CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, bounds);
	UIImage *thumbScale = [UIImage imageWithCGImage:imageRef scale:UIScreen.mainScreen.scale orientation:UIImageOrientationUp];
	CGImageRelease(imageRef);
	return thumbScale;
}

@end
