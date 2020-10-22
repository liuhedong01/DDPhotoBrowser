//
//  DDImageViewEngine.h
//  DDPhotoBrowser
//
//  Created by 刘和东 on 2015/5/21.
//  Copyright © 2015年 刘和东. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDImageView.h"

typedef NS_ENUM(NSInteger,DDImageViewEngineType) {
    DDImageViewEngineSystemType,/**UIImageView*/
    DDImageViewEngineSDAnimatedImageType,/**SDAnimatedImageView*/
};

@interface DDImageViewEngine : NSObject

+ (id<DDImageView>)getImageViewWith:(DDImageViewEngineType)type
                              frame:(CGRect)frame;


@end
