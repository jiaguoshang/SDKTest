//
//  ViewController.m
//  SDKTest
//
//  Created by 郏国上 on 2019/3/4.
//  Copyright © 2019年 郏国上. All rights reserved.
//

#import "ViewController.h"
#import <SDKDemo/SDKDemo.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *testBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *testBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 50, 50)];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn setTitle:@"测试" forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    testBtn.center = self.view.center;
    self.testBtn = testBtn;
    
}

- (void)testAction:(UIButton *)button
{
    SDKDemoViewController *vc = [[SDKDemoViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    [self.view bringSubviewToFront:self.testBtn];
}

@end
