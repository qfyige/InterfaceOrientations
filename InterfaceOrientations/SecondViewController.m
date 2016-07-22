//
//  SecondViewController.m
//  InterfaceOrientations
//
//  Created by tong li on 16/7/22.
//  Copyright © 2016年 tong li. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
- (IBAction)clickBacjButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

//是否支持自动旋转
- (BOOL)shouldAutorotate{
    return NO;
}




@end
