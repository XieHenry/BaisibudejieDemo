//
//  XMGFriendTrendsViewController.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/14.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"

@interface XMGFriendTrendsViewController ()

@end

@implementation XMGFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = XMGCommonBgColor;

    self.navigationItem.title = @"关注";
    
    // 导航栏左边的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsRecommendClick)];
    
}

- (void)friendsRecommendClick {
    
}

@end
