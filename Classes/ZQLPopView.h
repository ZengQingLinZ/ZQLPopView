//
//  ZQLPopView.h
//  ZeCheng
//
//  Created by Mac on 2018/5/11.
//  Copyright © 2018年 Mac. All rights reserved.
//
#import "ZQLBaseUIView.h"
#import <UIKit/UIKit.h>
typedef void(^clickBlock)();
typedef void(^closeBlock)();

@interface ZQLPopView : ZQLBaseUIView<UITableViewDelegate,UITableViewDataSource>
@property (strong,nonatomic) UITableView *tableView;
@property (strong,nonatomic) NSArray *titleArray;
@property (assign,nonatomic) CGFloat rowHeight;
//@property (assign,nonatomic) NSInteger maxRow;



@property (copy,nonatomic) clickBlock clickblock;
@property (copy,nonatomic) closeBlock closeblock;


- (instancetype)initWithFrame:(CGRect)frame;
- (void)showView:(UIView *)view;
@end
