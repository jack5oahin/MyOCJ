//
//  OCTabBarController.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/6.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "OCTabBarController.h"

@interface OCTabBarController ()

@end

@implementation OCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    //这个api不起作用，用下面的api
    self.tabBar.backgroundColor = [UIColor colorWithRed:206/255.0 green:206/255.0 blue:206/255.0 alpha:1.0];
    self.tabBar.barTintColor = [UIColor colorWithRed:206/255.0 green:206/255.0 blue:206/255.0 alpha:1.0];
//    self.tabBar.tintColor;
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
