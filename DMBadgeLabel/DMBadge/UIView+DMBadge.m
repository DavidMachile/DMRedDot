//
//  UIView+DMBadgeView.m
//  reddot
//
//  Created by DM_dsz on 2019/11/7.
//  Copyright © 2019 dsz. All rights reserved.
//

#import "UIView+DMBadge.h"
#import <objc/runtime.h>

static const char DMBadgeKey = '\0';

@implementation UIView (DMBadge)

- (void)setDMBadge:(DMBadgeLab *)DMBadge{
    if (DMBadge != self.DMBadge) {
        [self.DMBadge removeFromSuperview];
        [self addSubview:DMBadge];
        // 切换视图层次
        [self bringSubviewToFront:DMBadge];
        DMBadge.center = CGPointMake(self.frame.size.width-3, 3);
        // 存储新的
        [self willChangeValueForKey:@"DMBadge"]; // KVO
        
        objc_setAssociatedObject(self, &DMBadgeKey,DMBadge, OBJC_ASSOCIATION_ASSIGN);
        
        [self didChangeValueForKey:@"DMBadge"]; // KVO
    }
}

- (DMBadgeLab *)DMBadge {
    return objc_getAssociatedObject(self, &DMBadgeKey);
}

@end
