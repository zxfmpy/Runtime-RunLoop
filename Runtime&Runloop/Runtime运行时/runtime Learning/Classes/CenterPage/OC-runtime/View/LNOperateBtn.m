/*
 * File:  LNOperateBtn.m
 *
 * About ME『Public：Codeidea / https://githubidea.github.io』.
 * Copyright © All members (Star|Fork) have the right to read and write『https://github.com/CoderLN/Runtime-RunLoop』.
 *
 * 🏃🏻‍♂️ ◕该模块将系统化学习，后续替换、补充文章内容 ~
 *
 *【自定义操作按钮Btn】
 */

#import "LNOperateBtn.h"

@implementation LNOperateBtn

- (instancetype)initWithFrame:(CGRect)frame withBtnTitle:(NSString *)btnTitle {
   self = [super initWithFrame:frame];
    if (self) {
        [self setTitle:btnTitle forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:12.f];
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

/**
 根据传入下标返回操作按钮的frame
 btnAtIndex 下标
 */
+ (CGRect)rectForBtnAtIndex:(NSUInteger)btnAtIndex {
    // 每行最多显示4个
    NSUInteger maxRowNum = 4;
    // 每个按钮列间距
    CGFloat columnSpacing = 20;
    // 每个按钮行间距
    CGFloat rowSpacing = 20;
    // 每个按钮的宽度
    CGFloat width = (kScreenWidth - columnSpacing *5)/4;
    // 每个按钮的高度
    CGFloat height = 30;
    
    // 每个按钮的偏移量
    CGFloat offsetX = columnSpacing + (width + columnSpacing) * (btnAtIndex % maxRowNum);
    CGFloat offsetY = rowSpacing + (height + rowSpacing) * (btnAtIndex / maxRowNum);
    
    return CGRectMake(offsetX, offsetY, width, height);
}

@end























