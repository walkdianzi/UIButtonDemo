//
//  ViewController.m
//  buttonDemo
//
//  Created by ZQD on 14-11-20.
//  Copyright (c) 2014年 ZQD. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+frame.h"

#define defaultFont10               [UIFont fontWithName:@"LantingHei SC" size:10]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(100, 100, 200, 30)];
    btn.backgroundColor = [UIColor blackColor];
    [btn setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn setTitle:@"我是被测试的" forState:UIControlStateNormal];
    btn.titleLabel.font = defaultFont10;
    [btn.titleLabel setBackgroundColor:[UIColor redColor]];
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    
    [btn setImageLeft:24];
//    [btn setTitleLeft:10];
    [btn setTitleCenter];
    [self.view addSubview:btn];
    
 
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setFrame:CGRectMake(100, 200, 200, 30)];
    btn2.backgroundColor = [UIColor blackColor];
    [btn2 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn2 setTitle:@"我是被测试的2" forState:UIControlStateNormal];
    btn2.titleLabel.font = defaultFont10;
    [btn2.titleLabel setBackgroundColor:[UIColor redColor]];
    btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    
    
    [btn2 setImageLeft:24];
   // [btn2 setTitleLeft:10];
    [btn2 setTitleCenter];
    [self.view addSubview:btn2];
    
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn3 setFrame:CGRectMake(100, 300, 200, 30)];
    btn3.backgroundColor = [UIColor blackColor];
    [btn3 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn3 setTitle:@"我是被测试的3" forState:UIControlStateNormal];
    btn3.titleLabel.font = defaultFont10;
    [btn3.titleLabel setBackgroundColor:[UIColor redColor]];
    btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [btn3 setImageLeft:24];
   // [btn3 setTitleLeft:40];
    [btn3 setTitleCenter];
    NSLog(@"%f",btn3.imageLeft);
    
    [self.view addSubview:btn3];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
