//
//  ZQLTextViewCell.m
//  ZeCheng
//
//  Created by Mac on 2018/5/11.
//  Copyright © 2018年 Mac. All rights reserved.
//

#import "ZQLTextViewCell.h"
#import "UIView+Extension.h"

@implementation ZQLTextViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.headImg.layer.cornerRadius = self.headImg.height/2;
    self.headImg.layer.masksToBounds = YES;
}
- (IBAction)closeBtn:(id)sender {
    self.closeblock();
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
