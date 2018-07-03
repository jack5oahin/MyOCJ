//
//  StatusBarTwoViewController.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/6.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "StatusBarTwoViewController.h"
#import "StatusBarThreeViewController.h"

@interface StatusBarTwoViewController ()
- (IBAction)ClickSegmentControl:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
- (IBAction)clickPresentAddProperty:(id)sender;
- (IBAction)clickPresentNoProperty:(UIButton *)sender;

@end

@implementation StatusBarTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"StatusBarTwo";
    self.segmentControl.selectedSegmentIndex = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-(BOOL)prefersStatusBarHidden
//{
//    return YES;
//}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return  self.segmentControl.selectedSegmentIndex ? UIStatusBarStyleLightContent : UIStatusBarStyleDefault;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)ClickSegmentControl:(UISegmentedControl *)sender {
    [self setNeedsStatusBarAppearanceUpdate];
}
- (IBAction)clickPresentAddProperty:(id)sender {
    StatusBarThreeViewController *sbThreeVC = [[StatusBarThreeViewController alloc] initWithNibName:@"StatusBarThreeViewController" bundle:nil];
    sbThreeVC.modalPresentationCapturesStatusBarAppearance = YES;
    [self presentViewController:sbThreeVC animated:YES completion:nil];
}

- (IBAction)clickPresentNoProperty:(UIButton *)sender {
    StatusBarThreeViewController *sbThreeVC = [[StatusBarThreeViewController alloc] initWithNibName:@"StatusBarThreeViewController" bundle:nil];
    sbThreeVC.modalPresentationCapturesStatusBarAppearance = NO;
    [self presentViewController:sbThreeVC animated:YES completion:nil];
}
@end
