//
//  UIBarButtonItem+XMGExtension.h
//  百思不得姐
//
//  Created by XieHenry on 2019/5/14.
//  Copyright © 2019 XieHenry. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (XMGExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
