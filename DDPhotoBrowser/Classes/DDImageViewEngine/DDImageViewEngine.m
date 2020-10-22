//
//  DDImageViewEngine.m
//  DDPhotoBrowser
//
//  Created by 刘和东 on 2015/5/21.
//  Copyright © 2015年 刘和东. All rights reserved.
//

#import "DDImageViewEngine.h"
#import "DDSystemImageView.h"
#import "DDSDAnimatedImageView.h"

@implementation DDImageViewEngine

+ (id<DDImageView>)getImageViewWith:(DDImageViewEngineType)type
                              frame:(CGRect)frame
{
    switch (type) {
        case DDImageViewEngineSystemType:
        {
            return [[DDSystemImageView alloc] initWithFrame:frame];
        }
            break;
        case DDImageViewEngineSDAnimatedImageType:
        {
            return [[DDSDAnimatedImageView alloc] initWithFrame:frame];
        }
            break;
        
        default:
            break;
    }
    return nil;
}

@end
