//
//  XibViewController.m
//  XibAndCibTest
//
//  Created by 李文友 on 2018/7/19.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import "XibViewController.h"

@interface XibViewController ()

@end

@implementation XibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDate *date = [NSDate new];
    NSTimeInterval timeInterval = [date timeIntervalSince1970] - self.startTimeInterval;
    NSLog(@"");
    NSLog(@"call %s after %f", __func__, timeInterval);
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSDate *date = [NSDate new];
    NSTimeInterval timeInterval = [date timeIntervalSince1970] - self.startTimeInterval;
    NSLog(@"call %s after %f", __func__, timeInterval);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSDate *date = [NSDate new];
    NSTimeInterval timeInterval = [date timeIntervalSince1970] - self.startTimeInterval;
    NSLog(@"call %s after %f", __func__, timeInterval);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
