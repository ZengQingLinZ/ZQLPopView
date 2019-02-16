//
//  ZQLPopView.m
//  ZeCheng
//
//  Created by Mac on 2018/5/11.
//  Copyright © 2018年 Mac. All rights reserved.
//

#import "ZQLPopView.h"
#import "UIView+Extension.h"
#import "ZQLTextViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation ZQLPopView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.width, 0) style:UITableViewStylePlain];
        self.tableView.delegate=self;
        self.tableView.dataSource=self;
        [self.tableView registerNib:[UINib nibWithNibName:@"ZQLTextViewCell" bundle:nil] forCellReuseIdentifier:@"ZQLTextViewCell"];
        [self addSubview:self.tableView];
        self.backgroundColor = [UIColor clearColor];
        self.alpha = 0;
        [[UIApplication sharedApplication].delegate.window addSubview:self];
        
        self.rowHeight = 61;
    }
    return self;
}

- (void)setTitleArray:(NSArray *)titleArray{
    _titleArray=titleArray;
    self.tableView.height = self.titleArray.count * self.rowHeight;
    [self.tableView reloadData];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.rowHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZQLTextViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ZQLTextViewCell"];
    if (!cell) {
        cell=[[ZQLTextViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ZQLTextViewCell"];
    }
    
    NSDictionary *dic = self.titleArray[indexPath.row];
    cell.titlelab.text= dic[@"full_name"];
    cell.numLab.text= dic[@"account"];
    [cell.headImg sd_setImageWithURL:[NSURL URLWithString:dic[@"face"]]];
    cell.separatorInset = UIEdgeInsetsZero;
    cell.closeblock = ^{
        self.closeblock(dic);
    };
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self hiddenView];
    self.clickblock(self.titleArray[indexPath.row]);
    
}

- (void)showView:(UIView *)view{
    [self showView];
    CGPoint point = CGPointMake(view.centerX, view.y + view.height);
    
    CGPoint point2 = [view.superview convertPoint:point toView: [UIApplication sharedApplication].delegate.window];
    //    CGPoint point2 = [appdelegate.window convertPoint:point fromView: view.superview];
    
    self.tableView.centerX = point2.x;
    self.tableView.y = point2.y;
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
