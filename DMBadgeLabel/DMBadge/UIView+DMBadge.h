//
//  UIView+DMBadgeView.h
//  reddot
//
//  Created by DM_dsz on 2019/11/7.
//  Copyright © 2019 dsz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMBadgeLab.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (DMBadge)

/**
 * 给所有View视图动态添加一个属性
 */
@property (nonatomic, strong)DMBadgeLab *DMBadge;
@end

NS_ASSUME_NONNULL_END
