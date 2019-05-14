//
//  XMGMeViewController.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/14.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGMeViewController.h"

@interface XMGMeViewController ()

@end

@implementation XMGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNav];

}

-(void)setupNav {
    self.view.backgroundColor = XMGCommonBgColor;
    
    self.navigationItem.title = @"我的";
    // 导航栏右边的内容
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
}

- (void)moonClick {
    XMGLogFunc
}

- (void)settingClick {
    XMGLogFunc
}


@end
