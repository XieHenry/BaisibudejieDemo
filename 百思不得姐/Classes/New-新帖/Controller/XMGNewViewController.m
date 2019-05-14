//
//  XMGNewViewController.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/14.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGNewViewController.h"

@interface XMGNewViewController ()

@end

@implementation XMGNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = XMGCommonBgColor;

    //标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //左边
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
}

-(void)tagClick {
    XMGLogFunc
}


@end
