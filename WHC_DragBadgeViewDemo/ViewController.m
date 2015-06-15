//
//  ViewController.m
//  WHC_DragBadgeViewDemo
//
//  Created by 吴海超 on 15/6/15.
//  Copyright (c) 2015年 吴海超. All rights reserved.
//
/*
 *  qq:712641411
 *  gitHub:https://github.com/netyouli
 *  csdn:http://blog.csdn.net/windwhc/article/category/3117381
 */
#import "ViewController.h"
#import "WHC_BadgeView.h"
@interface ViewController ()<WHC_BadgeViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WHC_BadgeView * badgeView = [[WHC_BadgeView alloc]initWithSuperView:self.view position:self.view.center radius:20.0];
    badgeView.delegate = self;
    [badgeView setBadgeNumber:88];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)whc_BadgeViewDidRemoveFromSuperViewWithIndex:(NSInteger)index{
    NSLog(@"已经移除了BadgeViewIndex = %ld",index);
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"是否创建新的BadgeView" message:nil delegate:self cancelButtonTitle:@"是" otherButtonTitles:@"否", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex == 0){
        WHC_BadgeView * badgeView = [[WHC_BadgeView alloc]initWithSuperView:self.view position:self.view.center radius:20.0];
        badgeView.delegate = self;
        [badgeView setBadgeNumber:88];
    }
}
@end
