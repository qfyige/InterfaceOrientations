//
//  SecondViewController.m
//  InterfaceOrientations
//
//  Created by tong li on 16/7/22.
//  Copyright © 2016年 tong li. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
 //   [self changeOrientations];
}

- (IBAction)clickBacjButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

//是否支持自动旋转
- (BOOL)shouldAutorotate{
    return YES;
}
//支持旋转的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations

{
    return UIInterfaceOrientationMaskPortrait;
}


//- (void)changeOrientations{
//    NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationMaskPortrait];
//    [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
//}


@end
