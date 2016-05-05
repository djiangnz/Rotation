//
//  ViewController1.m
//  TEST_Rotate
//
//  Created by dianyi jiang on 29/04/16.
//  Copyright © 2016 dianyi jiang. All rights reserved.
//

#import "PushedViewController.h"

@interface PushedViewController ()
@property (assign, nonatomic, getter=isFullScreen) BOOL fullScreen;
@end

@implementation PushedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.fullScreen = !self.isFullScreen;
    [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger: self.isFullScreen?UIInterfaceOrientationLandscapeRight:UIInterfaceOrientationPortrait] forKey:@"orientation"];
}

- (BOOL)shouldAutorotate {
    NSLog(@"MARK: %s, %d", __PRETTY_FUNCTION__, __LINE__);
    return NO;
}


@end
