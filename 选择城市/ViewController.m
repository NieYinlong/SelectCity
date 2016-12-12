//
//  ViewController.m
//  选择城市
//
//  Created by YinlongNie on 16/6/14.
//  Copyright © 2016年 Jiuzhekan. All rights reserved.
//

#import "ViewController.h"

#import "CityViewController.h"
@interface ViewController ()<CityViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"选择城市");
}

- (IBAction)selectCityBtn:(id)sender {
    CityViewController *VC = [[CityViewController alloc] init];
    // 传入定位好的城市 名称
    VC.currentCityString = @"杭州";
    VC.delegate = self;
    [self presentViewController:VC animated:YES completion:nil];
}


#pragma mark - CityViewControllerDelegate

- (void)selectCityStr:(NSString *)cityStr {
    
    NSLog(@"选择后的城市代理回调------ %@", cityStr);
    _resultCityLB.text = cityStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
