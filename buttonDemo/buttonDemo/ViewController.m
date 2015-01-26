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
    
    
    //---------------
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.tag = 11;
    [btn setFrame:CGRectMake(100, 100, 200, 30)];
    btn.backgroundColor = [UIColor blackColor];
    [btn setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn setTitle:@"我是被测试的" forState:UIControlStateNormal];
    btn.titleLabel.font = defaultFont10;
    [btn.titleLabel setBackgroundColor:[UIColor redColor]];
    
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;    //AlignmentType Left
    [btn addTarget:self action:@selector(titleChanged:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn setImageLeft:24];
    [btn setTitleLeft:36];
    
    [self.view addSubview:btn];
    
 
    //---------------
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.tag = 12;
    [btn2 setFrame:CGRectMake(100, 150, 200, 30)];
    btn2.backgroundColor = [UIColor blackColor];
    [btn2 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn2 setTitle:@"我是被测试的2" forState:UIControlStateNormal];
    btn2.titleLabel.font = defaultFont10;
    [btn2.titleLabel setBackgroundColor:[UIColor redColor]];
    
    btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter; //AlignmentType Center
    [btn2 addTarget:self action:@selector(titleChanged:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn2 setImageLeft:24];
    [btn2 setTitleLeft:36];
    [self.view addSubview:btn2];
    
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(200, 150, 1, 30)];
    line.backgroundColor = [UIColor blackColor];
    [self.view addSubview:line];
    
    //---------------
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.tag = 13;
    [btn3 setFrame:CGRectMake(100, 200, 200, 30)];
    btn3.backgroundColor = [UIColor blackColor];
    [btn3 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn3 setTitle:@"我是被测试的3" forState:UIControlStateNormal];
    btn3.titleLabel.font = defaultFont10;
    [btn3.titleLabel setBackgroundColor:[UIColor redColor]];
    btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight; //AlignmentType Right
    [btn3 setImageLeft:24];
    [btn3 setTitleLeft:36];
    [btn3 addTarget:self action:@selector(titleChanged:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn3];
    
    //---------------
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.tag = 14;
    [btn4 setFrame:CGRectMake(100, 250, 200, 30)];
    btn4.backgroundColor = [UIColor blackColor];
    [btn4 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn4 setTitle:@"setImageToRight" forState:UIControlStateNormal];
    btn4.titleLabel.font = defaultFont10;
    [btn4.titleLabel setBackgroundColor:[UIColor redColor]];
    btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft; //AlignmentType Right
    [btn4 addTarget:self action:@selector(titleChanged:) forControlEvents:UIControlEventTouchUpInside];
    [btn4 setimageToTitleRight];
    
    NSLog(@"%f",btn4.imageLeft);
    
    [self.view addSubview:btn4];
    
    
    //---------------
    UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn5 setFrame:CGRectMake(100, 300, 200, 50)];
    btn5.backgroundColor = [UIColor blackColor];
    [btn5 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn5 setTitle:@"setImageToRight" forState:UIControlStateNormal];
    btn5.titleLabel.font = defaultFont10;
    [btn5.titleLabel setBackgroundColor:[UIColor redColor]];
    btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft; //AlignmentType Right
    
    [btn5 setImageAndTitleCenterImageTopWithpadding:0];
    
    [self.view addSubview:btn5];
    
    //---------------
    UIButton *btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn6 setFrame:CGRectMake(100, 360, 200, 50)];
    btn6.backgroundColor = [UIColor blackColor];
    [btn6 setImage:[UIImage imageNamed:@"best_icon"] forState:UIControlStateNormal];  //24x15
    [btn6 setTitle:@"setImageToRight" forState:UIControlStateNormal];
    btn6.titleLabel.font = defaultFont10;
    [btn6.titleLabel setBackgroundColor:[UIColor redColor]];
    btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft; //AlignmentType Right
    
    [btn6 setImageAndTitleCenterTitleTopWithpadding:0];
    
    [self.view addSubview:btn6];

}

-(void)titleChanged:(UIButton *)sender{
    
    if (sender.tag == 13 || sender.tag == 11 || sender.tag == 12) {
        [sender setTitle:@"haha" forState:UIControlStateNormal];
        [sender setImageLeft:24];
        [sender setTitleLeft:36];
    }
    
    if (sender.tag == 14) {
        [sender setTitle:@"haha" forState:UIControlStateNormal];
        [sender setimageToTitleRight];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
