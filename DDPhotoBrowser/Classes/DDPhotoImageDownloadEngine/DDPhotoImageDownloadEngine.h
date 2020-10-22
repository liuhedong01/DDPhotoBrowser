//
//  DDPhotoImageDownloadEngine.h
//  DDPhotoBrowser
//
//  Created by 刘和东 on 2015/5/21.
//  Copyright © 2015年 刘和东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/SDImageCache.h>

typedef void (^DDPhotoImageDownloadEngineProgressBlock)(NSInteger receivedSize, NSInteger expectedSize);

typedef void (^DDPhotoImageDownloadEngineFinishBlock)(UIImage * _Nullable image, NSURL * _Nullable url, BOOL success, NSError * _Nullable error);

@protocol DDPhotoImageDownloadEngine <NSObject>
@optional
@property (nonatomic,copy) DDPhotoImageDownloadEngineFinishBlock _Nullable finish;

//double progress = (double)receivedSize / expectedSize;
/**请求数据*/
- (void)setImageWithImageView:(nullable UIImageView *)imageView
                     imageURL:(nullable NSURL *)imageURL
                thumbImageUrl:(nullable NSURL *)thumbImageUrl
                  placeholder:(nullable UIImage *)placeholder
                     progress:(nullable DDPhotoImageDownloadEngineProgressBlock)progress
                       finish:(nullable DDPhotoImageDownloadEngineFinishBlock)finish;
- (void)setImageWithImageView:(nullable UIImageView *)imageView
                     imageURL:(nullable NSURL *)imageURL
                  placeholder:(nullable UIImage *)placeholder
                     progress:(nullable DDPhotoImageDownloadEngineProgressBlock)progress
                       finish:(nullable DDPhotoImageDownloadEngineFinishBlock)finish;
/** 取消请求 */
- (void)cancelImageRequestWithImageView:(nullable UIImageView *)imageView;
/** 通过url从内存中获取图片 */
- (UIImage *_Nullable)imageFromMemoryCacheForURL:(nullable NSURL *)url;
/** 通过url从磁盘中获取图片 */
- (UIImage *_Nullable)imageFromDiskCacheForURL:(nullable NSURL *)url;
/** 通过url获取图片 */
- (nullable UIImage *)imageFromCacheForURL:(nullable NSURL *)url;

@end
