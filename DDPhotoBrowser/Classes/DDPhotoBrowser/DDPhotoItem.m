//
//  DDPhotoItem.m
//  DDPhotoBrowser
//
//  Created by 刘和东 on 2015/5/21.
//  Copyright © 2015年 刘和东. All rights reserved.
//

#import "DDPhotoItem.h"

#import "DDPhotoImageDownloadEngine.h"


@implementation DDPhotoItem

- (instancetype)initWithSourceView:(UIImageView *)sourceView
                          imageUrl:(NSURL *)imageUrl
                        thumbImage:(UIImage *)thumbImage
                     thumbImageUrl:(NSURL *)thumbImageUrl
                  placeholderImage:(UIImage *)placeholderImage
               imageDownloadEngine:(id<DDPhotoImageDownloadEngine>)imageDownloadEngine
{
    self = [super init];
    if (self) {
        self.sourceView = sourceView;
        self.imageUrl = imageUrl;
        self.thumbImage = thumbImage;
        self.thumbImageUrl = thumbImageUrl;
        self.placeholderImage = placeholderImage;
        self.imageDownloadEngine = imageDownloadEngine;
        self.imageViewEngineType = DDImageViewEngineSystemType;
    }
    return self;
}
+ (instancetype)itemWithSourceView:(UIImageView *)sourceView
                          imageUrl:(NSURL *)imageUrl
                        thumbImage:(UIImage *)thumbImage
                     thumbImageUrl:(NSURL *)thumbImageUrl
                  placeholderImage:(UIImage *)placeholderImage
               imageDownloadEngine:(id<DDPhotoImageDownloadEngine>)imageDownloadEngine
{
    return [[DDPhotoItem alloc] initWithSourceView:sourceView imageUrl:imageUrl thumbImage:thumbImage thumbImageUrl:thumbImageUrl placeholderImage:placeholderImage imageDownloadEngine:imageDownloadEngine];
}

+ (instancetype)itemWithSourceView:(UIImageView *)sourceView
                          imageUrl:(NSURL *)imageUrl
                        thumbImage:(UIImage *)thumbImage
                     thumbImageUrl:(NSURL *)thumbImageUrl
                      imageDownloadEngine:(id<DDPhotoImageDownloadEngine>)imageDownloadEngine
{
    return [self itemWithSourceView:sourceView imageUrl:imageUrl thumbImage:thumbImage thumbImageUrl:thumbImageUrl placeholderImage:nil imageDownloadEngine:imageDownloadEngine];
}

- (CGRect)sourceViewInWindowRect
{
    if (self.sourceView) {
        UIWindow* window = [UIApplication sharedApplication].keyWindow;
        CGRect rect = [self.sourceView.superview convertRect:self.sourceView.frame toView:window];
        return rect;
    }
    return CGRectZero;
}


- (BOOL)checkIsNetworkImage
{
    if (self.imageUrl) {
        return YES;
    }
    return NO;
}

- (void)dealloc
{
    NSLog(@"dealloc：%@",NSStringFromClass([self class]));
}

@end
