//
//  TabOneNavigationController.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/6.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "TabOneNavigationController.h"

@interface TabOneNavigationController ()

@end

@implementation TabOneNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    self.tabBarItem.title = @"基础";
//    self.tabBarItem.image = [[UIImage imageNamed:@"safari"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}
//-(UIViewController *)childViewControllerForStatusBarHidden
//{
//
//}
-(UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
