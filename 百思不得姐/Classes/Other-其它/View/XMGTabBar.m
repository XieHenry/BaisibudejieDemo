//
//  XMGTabBar.m
//  百思不得姐
//
//  Created by XieHenry on 2019/5/14.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import "XMGTabBar.h"

@interface XMGTabBar()
@property (nonatomic,strong) UIButton *publicButton;
@end

@implementation XMGTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 设置背景图片--图片尺寸不对。不进行显示了
//        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
    }
    return self;
}


//MARK:发布按钮
-(UIButton *)publicButton {
    if (!_publicButton) {
        self.publicButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [self.publicButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:(UIControlStateNormal)];
        [self.publicButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:(UIControlStateHighlighted)];
        [self.publicButton addTarget:self action:@selector(publicButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.publicButton];
    }
    return _publicButton;
}

-(void)publicButtonClick {
    XMGLogFunc
}

//MARK:布局子控件
- (void)layoutSubviews {
    [super layoutSubviews];
    
    /**设置所有UITabBarButton的frame**/
    CGFloat buttonW = self.frame.size.width/5;
    CGFloat buttonH = self.frame.size.height;
    CGFloat buttonY = 0;
    //按钮索引
    int buttonIndex = 0;
    
    for (UIView *subview in self.subviews) {
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue;
        
        CGFloat buttonX = buttonIndex * buttonW;
        if (buttonIndex >=2) {
            buttonX += buttonW;
        }
        subview.frame = CGRectMake(buttonX, buttonY, buttonW ,buttonH);
        //增加索引
        buttonIndex ++;
        
    }
    
    //设置中间的发布按钮
    self.publicButton.frame = CGRectMake(0, 0, buttonW, buttonH);
    self.publicButton.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
}

@end
