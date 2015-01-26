//
//  UIButton+frame.h
//  buttonDemo
//
//  Created by ZQD on 14-11-25.
//  Copyright (c) 2014年 ZQD. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    
    ButtonPaddingTypeImageRight = 0,
    ButtonPaddingTypeCenterImageTop = 1,
    ButtonPaddingTypeCenterTitleTop = 2
}ButtonPaddingType;

@interface UIButton (frame)

//设置图片离左边的距离
-(float)imageLeft;
-(void)setImageLeft:(float)imageLeft;

//设置文字离左边的距离
-(float)titleLeft;
-(void)setTitleLeft:(float)titleLeft;

//设置文字居中
-(float)titleCenter;
-(void)setTitleCenter;

//设置图片在文字右边
-(void)setimageToTitleRight;


//设置图片和文字都居中，图片在上,padding为图片跟文字的间距
-(void)setImageAndTitleCenterImageTopWithpadding:(float)padding;

//设置图片和文字都居中，文字在上,padding为图片跟文字的间距
-(void)setImageAndTitleCenterTitleTopWithpadding:(float)padding;


@end
