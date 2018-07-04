//
//  StatusBarOneViewController.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/6.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "StatusBarOneViewController.h"
#import "StatusBarTwoViewController.h"

@interface StatusBarOneViewController ()
- (IBAction)clickBtnNextPage:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *briefIntroductionLbl;
- (IBAction)clickSegmentedControl:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *changeStatusBarBgColorSc;

@end

@implementation StatusBarOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"StatusBarOne";
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.briefIntroductionLbl.text = @"通过‘preferredStatusBarStyle’更改状态栏文字颜色，info不用更改";
//    [self.briefIntroductionLbl sizeToFit];
    self.briefIntroductionLbl.numberOfLines = 0;
    
    [self changeStatusBarBackgroundColor:[UIColor yellowColor]];

    [self.changeStatusBarBgColorSc insertSegmentWithTitle:@"隐藏statusBar" atIndex:2 animated:YES];
//    [self.changeStatusBarBgColorSc insertSegmentWithTitle:@"隐藏statusBar" atIndex:3 animated:YES];
    [self.changeStatusBarBgColorSc setTitle:@"黄色" forSegmentAtIndex:0];
    [self.changeStatusBarBgColorSc setTitle:@"蓝色" forSegmentAtIndex:1];
    [self.changeStatusBarBgColorSc setWidth:90 forSegmentAtIndex:2];
//    [self.changeStatusBarBgColorSc setWidth:90 forSegmentAtIndex:3];
    self.changeStatusBarBgColorSc.width = 180;
    self.changeStatusBarBgColorSc.x = (SCRWidth - 180)*0.5;
    
    
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

-(BOOL)prefersStatusBarHidden
{
    BOOL bl;
    if (self.changeStatusBarBgColorSc.selectedSegmentIndex == 2) {
        bl = YES;
    }else{
        bl = NO;
    }
    
    return bl;
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

- (IBAction)clickBtnNextPage:(UIButton *)sender {
    StatusBarTwoViewController *sbTwoVC = [[StatusBarTwoViewController alloc] initWithNibName:@"StatusBarTwoViewController" bundle:nil];
    [self.navigationController pushViewController:sbTwoVC animated:YES];
}
- (IBAction)clickSegmentedControl:(UISegmentedControl *)sender {
    UIColor *color;
    if (self.changeStatusBarBgColorSc.selectedSegmentIndex == 0)
        color = [UIColor yellowColor];
    else if (self.changeStatusBarBgColorSc.selectedSegmentIndex == 1)
        color = [UIColor blueColor];
    
    [self changeStatusBarBackgroundColor:color];
    
    [self setNeedsStatusBarAppearanceUpdate];
}
@end
