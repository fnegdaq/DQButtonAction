//
//  OtherViewController.m
//  DQButtonAction
//
//  Created by fengdaq on 15/8/6.
//  Copyright (c) 2015年 feng. All rights reserved.
//

#import "OtherViewController.h"
#import "SingletonDictionary.h"
#import "UICreator.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    SET_OBJECT(self, @"OtherViewController");
    UIButton *gobackButton = [UICreator createCustomButtonWithTitle:@"goback" Frame:CGRectMake(100, 100, 100, 100) ClickMethod:@"gobackAction"];
    gobackButton.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:gobackButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
