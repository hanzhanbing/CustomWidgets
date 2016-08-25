//
//  ViewController.m
//  CustomWidgets
//
//  Created by hanzhanbing on 16/7/22.
//  Copyright © 2016年 asj. All rights reserved.
//

#import "ViewController.h"
#import "HZBAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    imageView.image = [UIImage imageNamed:@"bg"];
    [self.view addSubview:imageView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showAlertView)];
    [self.view addGestureRecognizer:tap];
    
    HZBAlertView *alter = [[HZBAlertView alloc] initWithTitle:@"是否需要现在去登录" contentText:nil leftButtonTitle:@"不登录" rightButtonTitle:@"立即登录" baseView:self.view];
    alter.doneBlock = ^()
    {
        NSLog(@"跳到登录界面");
    };
}

- (void)showAlertView {
    HZBAlertView *alter = [[HZBAlertView alloc] initWithTitle:@"是否需要现在去登录" contentText:nil leftButtonTitle:@"不登录" rightButtonTitle:@"立即登录" baseView:self.view];
    alter.doneBlock = ^()
    {
        NSLog(@"跳到登录界面");
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
