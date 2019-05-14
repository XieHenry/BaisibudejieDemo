//
//  XMGTabBarController.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/12.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGTabBarController.h"
#import "XMGNewViewController.h"
#import "XMGMeViewController.h"
#import "XMGFriendTrendsViewController.h"
#import "XMGEssenceViewController.h"
#import "XMGTabBar.h"

@interface XMGTabBarController ()
@property (nonatomic,strong) UIButton *publicButton;
@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupItemTextAttributes];

    
    [self settpChildViewController];
}

-(void)settpChildViewController {
    /*有些图片显示出来会自动渲染成蓝色。
     1.产生一张不会进行自动渲染的图片
     UIImage *tempImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
     UIImage *selectedImage = [tempImage imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
     vc0.tabBarItem.selectedImage = selectedImage;
     2.或者直接在Assets文件中配置
     */
    
    /**添加子控制器**/
    [self setUpOneChildViewController:[[XMGEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setUpOneChildViewController:[[XMGNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setUpOneChildViewController:[[XMGFriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setUpOneChildViewController:[[XMGMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    
    /**更换TabBar**/
    [self setValue:[[XMGTabBar alloc] init] forKeyPath:@"tabBar"];
}

-(void)setupItemTextAttributes {
    /**设置所有UITabBarItem的文字属性
     全局设置item文字属性-属性方法后面有UI_APPEARANCE_SELECTOR都可以全局设置
     **/
    UITabBarItem *item = [UITabBarItem appearance];
    //设置普通状态下的文字属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:(UIControlStateNormal)];
    
    //设置选中状态下的文字属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectedAttrs forState:(UIControlStateSelected)];
}


/**
 初始化一个子控制器
 @param vc 子控制器名称
 @param title 标题
 @param image 图标
 @param selectedImage 选中图标
 */
-(void)setUpOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage  {
    
    //包装一个导航控制器
    XMGNavigationController *nav = [[XMGNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];

    //不要在这里设置颜色。否则会出现 创建4个vc。
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
}


/** 创建【发布按钮】的方法：
 方法1.在viewWillAppear中创建
 -步骤1 添加子控制器
 -步骤2 懒加载一个发布按钮
 -步骤3 在viewWillAppear中添加按钮
 
 为什么要在viewWillAppear方法中添加发布按钮？
 当viewWillAppear：方法被调用的时候，tabBar内部已经添加了5个UITabBarButton
 就可以实现 【发布按钮】盖在其他UITabBarButton上面
 注意：这样的话，会出现多次创建。
 解决方案：1.dispatch_once 只创建一次
 2.懒加载
 
 方法2.自定义tabBar
 **/

@end
