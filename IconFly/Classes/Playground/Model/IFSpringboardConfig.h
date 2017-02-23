//
//  IFSpringboardConfig.h
//  IconFly
//
//  Created by 吴双 on 2017/2/23.
//  Copyright © 2017年 unique. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IFSpringboardConfigItem : NSObject

@property (nonatomic, assign) CGRect frameInImage;

@property (nonatomic, assign) CGRect frameInLayer;

- (instancetype)initWithJSON:(NSDictionary *)JSON;

@end



@interface IFSpringboardConfig : NSObject

@property (nonatomic, strong, readonly) IFSpringboardConfigItem *statusBar;

@property (nonatomic, strong, readonly) IFSpringboardConfigItem *iconScrollView;

@property (nonatomic, strong, readonly) IFSpringboardConfigItem *pageControl;

@property (nonatomic, strong, readonly) IFSpringboardConfigItem *dock;

+ (instancetype)sharedConfig;

@end
