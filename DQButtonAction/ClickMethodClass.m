//
//  ClickMethodClass.m
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import "ClickMethodClass.h"
#import "ViewController.h"
#import "OtherViewController.h"
#import "SingletonDictionary.h"

@implementation ClickMethodClass

- (void)pushAction
{
    ViewController *viewVC =  GET_OBJECT(@"ViewController");
    OtherViewController *otherVC = [[OtherViewController alloc]init];
    [viewVC presentViewController:otherVC animated:YES completion:nil];
}

- (void)gobackAction
{
    OtherViewController *otherVC = GET_OBJECT(@"OtherViewController");
    [otherVC dismissViewControllerAnimated:YES completion:nil];
}

@end
