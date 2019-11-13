//
//  ViewController.m
//  DMBadgeLabel
//
//  Created by ymt_dsz on 2019/11/13.
//  Copyright © 2019 dsz. All rights reserved.
//

#import "ViewController.h"
#import "UIView+DMBadge.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    view.DMBadge = [DMBadgeLab defaultBadge];
    view.DMBadge.badgeText = @"红点";
    
    // Do any additional setup after loading the view.
}


@end
