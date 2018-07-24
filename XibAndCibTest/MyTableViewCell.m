//
//  MyTableViewCell.m
//  XibAndCibTest
//
//  Created by 李文友 on 2018/7/20.
//  Copyright © 2018年 李文友. All rights reserved.
//

#import "MyTableViewCell.h"

@interface MyTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *exampleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *exampleLabel2;
@property (weak, nonatomic) IBOutlet UILabel *exampleLabel3;

@end

@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//#pragma mark - Configure UI
//
//- (void)updateUIWithTableViewCellUIModel:(MyTableViewCellUIModel *)uiModel {
//     // Configure UI here
////    self.exampleLabel1.text = @""
////    self.exampleLabel1.text = uiModel.asdfa
//}

@end
