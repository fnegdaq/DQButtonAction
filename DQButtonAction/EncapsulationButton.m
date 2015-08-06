//
//  EncapsulationButton.m
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import "EncapsulationButton.h"

@implementation EncapsulationButton

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        SEL selector = NSSelectorFromString(@"ClickAction");
        [self addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)ClickAction
{
    _oneBlock(self);
}

@end

