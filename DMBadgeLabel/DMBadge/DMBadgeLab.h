//
//  DMBadgeView.h
//  reddot
//
//  Created by DM_dsz on 2019/11/7.
//  Copyright © 2019 dsz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DMBadgeLab : UILabel

/**
 创建对象

 @return object
 */
+ (instancetype)defaultBadge;


/**
 badgeNumber 传数字时调用，大于0时显示 高18 圆角9
 */
@property (nonatomic , assign) NSUInteger badgeNumber;


/**
 badgeText  传文本时调用，文本长度大于0显示 高18 圆角9
            根据文本长度自动变化 只支持一行文字
 */
@property (nonatomic , strong) NSString *badgeText;
@end

NS_ASSUME_NONNULL_END
