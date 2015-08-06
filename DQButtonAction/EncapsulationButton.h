//
//  EncapsulationButton.h
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EncapsulationButton;

typedef void(^BlockTargetAction)(EncapsulationButton *);

@interface EncapsulationButton : UIButton

@property (nonatomic, copy) BlockTargetAction oneBlock;

@end
