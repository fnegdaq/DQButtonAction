//
//  UICreator.m
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import "UICreator.h"
#import "ClickMethodClass.h"

//忽略 performSelector警告
#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)


@implementation UICreator

+ (EncapsulationButton *)createCustomButtonWithTitle:(NSString *)title Frame:(CGRect)frame ClickMethod:(NSString *)clickMethod
{
    ClickMethodClass *clickOfClass = [[ClickMethodClass alloc] init];
    
    EncapsulationButton *oneButton = [[EncapsulationButton alloc] initWithFrame:frame];
    [oneButton setTitle:title forState:UIControlStateNormal];
    oneButton.oneBlock = ^(EncapsulationButton *btn){
        
        SEL selector = NSSelectorFromString(clickMethod);
        
        SuppressPerformSelectorLeakWarning(
                                           if ([clickOfClass respondsToSelector:selector]) {
                                               [clickOfClass performSelector:selector withObject:nil];
                                           });
    };
    
    return oneButton;
}
@end
