//
//  DDImageView.h
//  DDPhotoBrowser
//
//  Created by 刘和东 on 2015/5/21.
//  Copyright © 2015年 刘和东. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol DDImageView <NSObject>

- (instancetype)initWithFrame:(CGRect)frame;
- (UIImageView *)getImageView;
- (NSData *)getImageData;

@end
