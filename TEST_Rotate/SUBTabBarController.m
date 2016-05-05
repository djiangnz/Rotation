//
//  SUBTabBarController.m
//  TEST_Rotate
//
//  Created by dianyi jiang on 30/04/16.
//  Copyright © 2016 dianyi jiang. All rights reserved.
//

#import "SUBTabBarController.h"
#import "SUBNavgationController.h"
#import "RootViewController.h"

@interface SUBTabBarController ()

@end

@implementation SUBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    RootViewController *vc1 = [[RootViewController alloc] init];
    [self addChildVC:vc1 withTitle:@"首页" withImageName:@"tabbar_home"];
    
    RootViewController *vc2 = [[RootViewController alloc]init];
    [self addChildVC:vc2 withTitle:@"消息" withImageName:@"tabbar_message"];
    
    RootViewController *vc3 = [[RootViewController alloc]init];
    [self addChildVC:vc3 withTitle:@"联系人" withImageName:@"tabbar_profile"];
    
    RootViewController *vc4 = [[RootViewController alloc]init];
    [self addChildVC:vc4 withTitle:@"我的" withImageName:@"tabbar_discover"];
    self.selectedIndex = 0;
}

- (void)addChildVC:(UIViewController *)childVC withTitle:(NSString *)title withImageName:(NSString *)imageName {
    
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    SUBNavgationController *navigationController = [[SUBNavgationController alloc]initWithRootViewController:childVC];
    [self addChildViewController:navigationController];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    SUBNavgationController *nav = self.viewControllers[self.selectedIndex];
    return [nav.topViewController supportedInterfaceOrientations];
}

//- (BOOL)shouldAutorotate {
//    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
//    SUBNavgationController *nav = self.viewControllers[self.selectedIndex];
//    return [nav.topViewController shouldAutorotate];
//}


@end
