//
//  UICreator.h
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EncapsulationButton.h"

@interface UICreator : NSObject

+ (EncapsulationButton *)createCustomButtonWithTitle:(NSString*)title Frame:(CGRect)frame ClickMethod:(NSString *)clickMethod;
@end
