//
//  XMGFriendTrendsViewController.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/14.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"
#import "XMGRecommendFollowViewController.h"
#import "XMGLoginRegisterViewController.h"

@interface XMGFriendTrendsViewController ()

@end

@implementation XMGFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = XMGCommonBgColor;

    self.navigationItem.title = @"我的关注";
    
    // 导航栏左边的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsRecommendClick)];
}

- (void)friendsRecommendClick {
    XMGRecommendFollowViewController *vc = [[XMGRecommendFollowViewController alloc] init];
    vc.view.backgroundColor = XMGRandomColor;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)loginRegister:(UIButton *)sender {
    XMGLoginRegisterViewController *vc = [[XMGLoginRegisterViewController alloc] init];
    [self.navigationController presentViewController:vc animated:YES completion:nil];
    
}

@end
