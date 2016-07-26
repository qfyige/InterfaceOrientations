//
//  ViewController.m
//  InterfaceOrientations
//
//  Created by tong li on 16/7/22.
//  Copyright © 2016年 tong li. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
//获取storyboard 上的VC
#define GetStoryBoardWithViewControllerName(ControllerName)    \
[[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:ControllerName]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
}

- (void)orientationChanged:(NSObject *)ob{
    NSLog(@"%ld",[UIApplication sharedApplication].statusBarOrientation);
}

- (IBAction)clickNextButton:(id)sender {
    [self changeOrientations];

    SecondViewController *sec = GetStoryBoardWithViewControllerName(@"SecondViewController");
    [self presentViewController:sec animated:YES completion:^{
        
    }];
}

//是否支持自动旋转
- (BOOL)shouldAutorotate{
    return YES;
}
//支持旋转的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations

{
    return UIInterfaceOrientationMaskAll;
}

//暴力更改设备方向
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self changeOrientations];
}

- (void)changeOrientations{
    NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationMaskPortrait];
    [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
