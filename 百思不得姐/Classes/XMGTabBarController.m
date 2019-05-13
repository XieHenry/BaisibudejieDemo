//
//  XMGTabBarController.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/12.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGTabBarController.h"

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

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

    /*有些图片显示出来会自动渲染成蓝色。
     1.产生一张不会进行自动渲染的图片
     UIImage *tempImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
     UIImage *selectedImage = [tempImage imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
     vc0.tabBarItem.selectedImage = selectedImage;
     2.或者直接在Assets文件中配置
     */
    
    /**添加子控制器**/
    [self setUpOneChildViewController:[[UITableViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setUpOneChildViewController:[[UIViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setUpOneChildViewController:[[UIViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setUpOneChildViewController:[[UIViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];

}

/**
 初始化一个子控制器

 @param vc 子控制器名称
 @param title 标题
 @param image 图标
 @param selectedImage 选中图标
 */
-(void)setUpOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage  {
    vc.view.backgroundColor = XMGRandomColor;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    [self addChildViewController:vc];
}


@end
