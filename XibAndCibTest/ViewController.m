//
//  ViewController.m
//  XibAndCibTest
//
//  Created by 李文友 on 2018/7/19.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import "ViewController.h"

#import "XibViewController.h"
#import "MasonryViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(UIButton *)sender {
    NSTimeInterval timeInterval = [[NSDate new] timeIntervalSince1970];
    if (sender.tag == 0) {
        XibViewController *vc = [XibViewController new];
        vc.startTimeInterval = timeInterval;
        [self.navigationController pushViewController:vc animated:YES];
    } else {
        MasonryViewController *vc = [MasonryViewController new];
        vc.startTimeInterval = timeInterval;
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
