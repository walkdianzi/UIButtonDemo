//
//  UIButton+frame.m
//  buttonDemo
//
//  Created by ZQD on 14-11-25.
//  Copyright (c) 2014年 ZQD. All rights reserved.
//

#import "UIButton+frame.h"

@implementation UIButton (frame)

-(float)imageLeft{
    return self.imageView.frame.origin.x;
}

-(void)setImageLeft:(float)imageLeft{
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.origin.x+imageLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, (-self.imageView.frame.origin.x+imageLeft)*2, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.imageView.frame.origin.x-imageLeft)];
    }
}

-(float)titleLeft{
    return self.titleLabel.frame.origin.x;
}
-(void)setTitleLeft:(float)titleLeft{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.titleLabel.frame.origin.x+titleLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, (-self.titleLabel.frame.origin.x+titleLeft)*2, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.titleLabel.frame.origin.x-titleLeft)];
    }
    
}


-(float)titleCenter{
    
    return self.frame.size.width/2;
}
-(void)setTitleCenter{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, (self.frame.size.width-self.titleLabel.frame.size.width)/2-self.titleLabel.frame.origin.x, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, ((self.frame.size.width-self.titleLabel.frame.size.width)/2-self.titleLabel.frame.origin.x)*2, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -(self.frame.size.width-self.titleLabel.frame.size.width)/2+self.titleLabel.frame.origin.x)];
    }

}

@end
