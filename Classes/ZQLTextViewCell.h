//
//  ZQLTextViewCell.h
//  ZeCheng
//
//  Created by Mac on 2018/5/11.
//  Copyright © 2018年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^closeBlock)();

@interface ZQLTextViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titlelab;
@property (weak, nonatomic) IBOutlet UIImageView *headImg;
@property (weak, nonatomic) IBOutlet UILabel *numLab;

@property (copy,nonatomic) closeBlock closeblock;
@end
