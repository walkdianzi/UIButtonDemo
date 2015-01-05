//
//  UIButton+frame.h
//  buttonDemo
//
//  Created by ZQD on 14-11-25.
//  Copyright (c) 2014年 ZQD. All rights reserved.
//

#import <UIKit/UIKit.h>

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
@end
