//
//  ViewController.m
//  TEST_Rotate
//
//  Created by dianyi jiang on 29/04/16.
//  Copyright © 2016 dianyi jiang. All rights reserved.
//

#import "RootViewController.h"
#import "PushedViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(notificationItemDidClickADD)];
}

- (void)notificationItemDidClickADD {
    PushedViewController *vc = [[PushedViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (BOOL)shouldAutorotate {
//    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
//    return YES;
//}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return UIInterfaceOrientationMaskPortrait;
}

@end
