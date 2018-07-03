//
//  PageControllerViewController.m
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "PageControlViewController.h"

@interface PageControlViewController () <UIScrollViewDelegate>
@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) UIPageControl *page;
@end

@implementation PageControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 150, 300, 100)];
    self.scroll.backgroundColor =  [UIColor lightGrayColor];
    self.scroll.contentSize = CGSizeMake(900, 0);
    self.scroll.delegate = self;
//    self.scroll.pagingEnabled = YES;
    [self.view addSubview:self.scroll];

    self.page = [[UIPageControl alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    self.page.backgroundColor = [UIColor purpleColor];
    self.page.numberOfPages = 3;
    self.page.currentPage = 0;
    self.page.pageIndicatorTintColor = [UIColor redColor];
    self.page.currentPageIndicatorTintColor = [UIColor blueColor];
    [self.view addSubview:self.page];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int pageNum = scrollView.contentOffset.x / scrollView.width;
    self.page.currentPage = pageNum;
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
