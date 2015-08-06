//
//  ViewController.m
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import "ViewController.h"
#import "SingletonDictionary.h"
#import "UICreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    SET_OBJECT(self, @"ViewController");
    
    UIButton *pushButton = [UICreator createCustomButtonWithTitle:@"push" Frame:CGRectMake(100, 100, 100, 100) ClickMethod:@"pushAction"];
    pushButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:pushButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
