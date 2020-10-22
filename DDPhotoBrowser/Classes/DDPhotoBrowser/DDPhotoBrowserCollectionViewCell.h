//
//  DDPhotoBrowserCollectionViewCell.h
//  BSHEnterpriseProject
//
//  Created by 刘和东 on 2020/8/28.
//  Copyright © 2020 刘和东. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDPhotoImageView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DDPhotoBrowserCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong, readonly) DDPhotoImageView * imageView;

@property (nonatomic, strong) DDPhotoItem * item;

@end

NS_ASSUME_NONNULL_END
