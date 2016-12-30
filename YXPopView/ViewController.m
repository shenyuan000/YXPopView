//
//  ViewController.m
//  YXPopView
//
//  Created by yx on 2016/12/30.
//  Copyright © 2016年 www.yixun.net. All rights reserved.
//

#import "ViewController.h"
#import "YXPopTableView.h"
#import "YXPopView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 40, 40);
    [btn setImage:[UIImage imageNamed:@"premery_ico_addcustomer"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)click:(UIButton *)btn
{
    CGPoint point           = CGPointMake(btn.frame.origin.x + btn.frame.size.width / 2, btn.frame.origin.y + btn.frame.size.width + 25);
//    YXPopTableView *popView = [[YXPopTableView alloc] initWithOrigin:point Width:150 Height:30 * 3 Type:YXTypeOfUpRight Color:[UIColor whiteColor]];
    YXPopTableView *popView = [[YXPopTableView alloc] initWithOrigin:point Width:150 Height:40 * 2 Type:YXTypeOfUpRight color:[UIColor whiteColor]];
    popView.dataArray       = @[@"新增潜客", @"身份证查询"];
    popView.images          = @[@"premery_add", @"premery_seachid"];
    popView.row_height      = 40;
    popView.fontSize        = 16.0f;
//    popView.titleTextColor  = [UIColor colorWithRed:0.2669 green:0.765 blue:1.0 alpha:1.0];
    [popView showView];
    
    [popView passIdx:^(NSInteger index) {
        NSLog(@"%zd",index);
    }];
}


@end
