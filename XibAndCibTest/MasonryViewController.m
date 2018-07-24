//
//  MasonryViewController.m
//  XibAndCibTest
//
//  Created by 李文友 on 2018/7/19.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import "MasonryViewController.h"

#import "Masonry.h"

@interface MasonryViewController ()

@property (strong, nonatomic) UILabel *centerLabel;
@property (strong, nonatomic) UILabel *leftLabel;
@property (strong, nonatomic) UILabel *rightLabel;
@property (strong, nonatomic) UIButton *centerButton;
@property (strong, nonatomic) UIImageView *centImageView;

@end

@implementation MasonryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.centerLabel];
    [self.view addSubview:self.leftLabel];
    [self.view addSubview:self.rightLabel];
    [self.view addSubview:self.centerButton];
    [self.view addSubview:self.centImageView];
    
    [self makdeConstraints];
    
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

#pragma mark - buttonAction

- (void)buttonAction:(UIButton *)button {
    NSLog(@"call %s at line %i", __func__, __LINE__);
}


#pragma mark - make constraint

- (void)makdeConstraints {
    [self.centerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
        make.width.equalTo(@100);
        make.height.equalTo(@21);
    }];
    
    [self.leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.centerLabel.mas_centerY);
        make.left.equalTo(@15);
        make.width.equalTo(@100);
        make.height.equalTo(@21);
    }];
    
    [self.rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.centerLabel.mas_centerY);
        make.right.equalTo(@-15);
        make.width.equalTo(@100);
        make.height.equalTo(@21);
    }];
    
    [self.centImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.centerLabel.mas_top).with.offset(-30);
        make.left.right.equalTo(self.view);
        make.height.equalTo(self.centImageView.mas_width).multipliedBy(128/375.f);
    }];
    
    [self.centerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.centerLabel.mas_bottom).with.offset(30);
        make.centerX.equalTo(self.view.mas_centerX);
    }];
}

#pragma mark - getter/setter

- (UILabel *)centerLabel {
    if (!_centerLabel) {
        _centerLabel = [UILabel new];
        _centerLabel.text = @"centerLabel";
        _centerLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _centerLabel;
}

- (UILabel *)leftLabel {
    if (!_leftLabel) {
        _leftLabel = [UILabel new];
        _leftLabel.text = @"leftLabel";
//        _leftLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _leftLabel;
}

- (UILabel *)rightLabel {
    if (!_rightLabel) {
        _rightLabel = [UILabel new];
        _rightLabel.text = @"rightLabel";
        _rightLabel.textAlignment = NSTextAlignmentRight;
    }
    return _rightLabel;
}

- (UIImageView *)centImageView {
    if (!_centImageView) {
        _centImageView = [UIImageView new];
        _centImageView.image = [UIImage imageNamed:@"FSK_banner_default"];
        _centImageView.highlightedImage = [UIImage imageNamed:@"FSK_banner_default"];
    }
    return _centImageView;
}

- (UIButton *)centerButton {
    if (!_centerButton) {
        _centerButton = [UIButton new];
        [_centerButton setTitle:@"centerButton" forState:UIControlStateNormal];
        [_centerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_centerButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _centerButton;
}

@end
