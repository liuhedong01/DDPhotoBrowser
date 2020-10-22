//
//  DDPhotoBrowserCollectionViewCell.m
//  BSHEnterpriseProject
//
//  Created by 刘和东 on 2020/8/28.
//  Copyright © 2020 刘和东. All rights reserved.
//

#import "DDPhotoBrowserCollectionViewCell.h"

@interface DDPhotoBrowserCollectionViewCell ()

@property (nonatomic, strong) DDPhotoImageView * imageView;

@property (nonatomic, assign) DDImageViewEngineType imageViewEngineType;

@end



@implementation DDPhotoBrowserCollectionViewCell

- (void)setItem:(DDPhotoItem *)item
{
    _item = item;
    
    [self _configUI];
    
}

- (void)_configUI
{
    
    if (!_imageView) {
        //没有
        _imageView = [[DDPhotoImageView alloc] initWithFrame:[UIScreen mainScreen].bounds imageViewEngineType:self.item.imageViewEngineType];
        
//        _imageView.backgroundColor = [UIColor cyanColor];
        
        [self.contentView addSubview:self.imageView];
    }
    
    self.imageView.item = self.item;

    
}

@end
