//
//  ZQLBaseUIView.m
//  pc_international
//
//  Created by 曾清林 on 2018/6/16.
//  Copyright © 2018年 曾清林. All rights reserved.
//

#import "ZQLBaseUIView.h"

@implementation ZQLBaseUIView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    }
    return self;
}

- (void)showView{
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 1;
    }];
    //[self performSelector:@selector(hiddenView) withObject:nil afterDelay:4];
}

- (void)hiddenView{
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self hiddenView];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
