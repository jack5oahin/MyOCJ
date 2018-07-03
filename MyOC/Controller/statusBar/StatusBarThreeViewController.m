//
//  StatusBarThreeViewController.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/7.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "StatusBarThreeViewController.h"

@interface StatusBarThreeViewController ()
- (IBAction)clickReturnBtn:(UIButton *)sender;

@end

@implementation StatusBarThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)clickReturnBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
