//
//  PageControllerViewController.m
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "PageControlViewController.h"
#import "OCPageControl.h"

@interface PageControlViewController () <UIScrollViewDelegate, OCPageControlDelegate>
{
    int VC_ImageCount;
    UIScrollView  *scrollview ;
    
    UIPageControl  *PageControl ;
    
    UIButton  *TempBtn ;
    
    UIButton  *btn;
    
    UIButton   *temp_BTn;
}
@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) UIPageControl *page;
@property (nonatomic, strong) OCPageControl *ocPage;
@end

@implementation PageControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    
    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake((SCRWidth-300)*0.5, 70, 300, 100)];
    self.scroll.backgroundColor =  [UIColor lightGrayColor];
#warning 习惯把contentSize=CGSizeMake(900, 0)，即y=0，这样的坏处，scrollRectToVisible方法，会失效。
    self.scroll.contentSize = CGSizeMake(900, 1);
    self.scroll.delegate = self;
    self.scroll.pagingEnabled = YES;
    self.scroll.bounces = NO;
    self.scroll.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.scroll];
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
    v1.backgroundColor = [UIColor redColor];
    UIView *v2 = [[UIView alloc] initWithFrame:CGRectMake(300, 0, 300, 100)];
    v2.backgroundColor = [UIColor blueColor];
    UIView *v3 = [[UIView alloc] initWithFrame:CGRectMake(600, 0, 300, 100)];
    v3.backgroundColor = [UIColor greenColor];
    [self.scroll addSubview:v1];
    [self.scroll addSubview:v2];
    [self.scroll addSubview:v3];

    self.page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 200, SCRWidth, 10)];
    self.page.center = CGPointMake(self.view.center.x, self.page.center.y);
    self.page.backgroundColor = [UIColor purpleColor];
    self.page.tintColor = [UIColor yellowColor];
    self.page.numberOfPages = 3;
    self.page.currentPage = 0;
    self.page.pageIndicatorTintColor = [UIColor whiteColor];
    self.page.currentPageIndicatorTintColor = [UIColor blackColor];
    [self.view addSubview:self.page];
    [self.page addTarget:self action:@selector(pageControlTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    self.ocPage = [[OCPageControl alloc] initWithFrame:CGRectMake(0, 300, SCRWidth, 10)];
    //    self.ocPage.center = self.view.center; //ocPage中，layoutSubviews中，设置了居中。
    self.ocPage.backgroundColor = [UIColor purpleColor];
    self.ocPage.numberOfPages = 3;
    self.ocPage.currentPage = 0;
    self.ocPage.currentPageIndicatorTintColor = [UIColor blackColor];
    self.ocPage.pageIndicatorTintColor = [UIColor whiteColor];
    [self.view addSubview:self.ocPage];
    
    //page直接添加点击事件时，pageControl只能，依次，移动，不能，点击任意dot
//    [self.ocPage addTarget:self action:@selector(pageControlTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    //为page每个dot添加上btn，
    self.ocPage.delegate = self;
    
}
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%s",__FUNCTION__);
    int pageNum = scrollView.contentOffset.x / scrollView.width;
    self.page.currentPage = pageNum;
    self.ocPage.currentPage = pageNum;
}

- (void)pageControlTouched:(UIPageControl *)page
{
    CGRect frame = self.scroll.frame;
    CGRect rect = CGRectMake(frame.size.width * page.currentPage, 0, frame.size.width, frame.size.height);
    
    //下面这样两个方法皆可
    [self.scroll scrollRectToVisible:rect animated:YES];
//  [self.scroll setContentOffset:CGPointMake(frame.size.width * page.currentPage, 0) animated:YES];
}

//自定义的代理方法
-(void)pageControl:(OCPageControl *)pageControl didSelectDotAtIndex:(NSUInteger)index
{
    CGRect frame = self.scroll.frame;
    CGRect rect = CGRectMake(frame.size.width * index, 0, frame.size.width, frame.size.height);
    
#warning 如果animate=YES，scrollview还是会，依次滚动到目标位置。
    [self.scroll scrollRectToVisible:rect animated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
