//
//  DMBadgeView.m
//  reddot
//
//  Created by DM_dsz on 2019/11/7.
//  Copyright © 2019 dsz. All rights reserved.
//

#import "DMBadgeLab.h"
#define DMBadgeBGColor @"#F43530"
#define DMBadgeTxtColor @"#FFFFFF"
@interface DMBadgeLab()

@end

@implementation DMBadgeLab

+(instancetype)defaultBadge{
    return [[self alloc]initWithFrame:CGRectMake(0, 0, 18, 18)];
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews{
    self.backgroundColor = UIColor.redColor;
    self.clipsToBounds = YES;
    self.layer.cornerRadius = 9.0;
    self.textColor = [UIColor whiteColor];
    self.font = [UIFont systemFontOfSize:13];
    self.text = nil;
    self.textAlignment = NSTextAlignmentCenter;
    self.hidden = YES;
}

#pragma mark ----getter/setter
- (void)setBadgeValue:(NSInteger)badgeValue {
    if (badgeValue>99) {
        self.hidden = NO;
        self.text = @"...";
        self.bounds = CGRectMake(0, 0, 28, 18);
        [self drawaaaTextInRect:self.bounds];
        return;
    }else if (badgeValue>9){
        self.hidden = NO;
        self.text = [NSString stringWithFormat:@"%ld",badgeValue];
        self.bounds = CGRectMake(0, 0, 23, 18);
        [self drawaaaTextInRect:self.bounds];

        return;
    }else if (badgeValue>0){
        self.hidden = NO;
        self.text = [NSString stringWithFormat:@"%ld",badgeValue];
        self.bounds = CGRectMake(0, 0, 18, 18);
        [self drawaaaTextInRect:self.bounds];

        return;
    }else{
        self.text = nil;
        self.hidden = YES;
        return;
    }
}

- (void)setBadgeTxt:(NSString *)badgeTxt{
    if (badgeTxt.length>0) {
        self.hidden = NO;
        self.text = [NSString stringWithFormat:@"%@",badgeTxt];
        [self sizeToFit];
        self.bounds = CGRectMake(0, 0, self.frame.size.width+9, 18);
        [self drawaaaTextInRect:self.bounds];
        return;
    }else{
        self.text = nil;
        self.hidden = NO;
        self.bounds = CGRectMake(0, 0, 18, 18);
        [self drawaaaTextInRect:self.bounds];
        return;
    }
}


-(void)setBadgeNumber:(NSUInteger)badgeNumber{
    _badgeNumber = badgeNumber;
    [self setBadgeValue:badgeNumber];
}
- (void)setBadgeText:(NSString *)badgeText{
    _badgeText = badgeText;
    [self setBadgeTxt:badgeText];
}

-(void)drawaaaTextInRect:(CGRect)rect{
    //设置矢量路径
    UIBezierPath *_path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:9.0f];
    [_path addClip];
    CAShapeLayer *_bgLayer = [CAShapeLayer layer];
    _bgLayer.frame = rect;
    _bgLayer.fillColor = [UIColor clearColor].CGColor;//填充颜色
    _bgLayer.lineWidth = 2.0f;
    _bgLayer.strokeColor = [UIColor whiteColor].CGColor;//线条颜色
    _bgLayer.strokeStart = 0.f;
    _bgLayer.strokeEnd = 1.0f;
    _bgLayer.path = _path.CGPath;
    [self.layer addSublayer:_bgLayer];

}

@end
