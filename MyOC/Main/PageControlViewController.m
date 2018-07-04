//
//  PageControllerViewController.m
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "PageControlViewController.h"
#import "OCPageControl.h"

@interface PageControlViewController () <UIScrollViewDelegate>
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
    self.scroll.contentSize = CGSizeMake(900, 0);
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

    self.page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 200, SCRWidth, 50)];
//    self.page.center = CGPointMake(self.view.center.x, self.page.center.y);
    self.page.backgroundColor = [UIColor purpleColor];
    self.page.tintColor = [UIColor yellowColor];
    self.page.numberOfPages = 3;
    self.page.currentPage = 0;
    self.page.pageIndicatorTintColor = [UIColor redColor];
    self.page.currentPageIndicatorTintColor = [UIColor blueColor];
    [self.view addSubview:self.page];
    
    self.ocPage = [[OCPageControl alloc] initWithFrame:CGRectMake(0, 300, SCRWidth, 10)];
    self.ocPage.center = self.view.center;

    self.ocPage.numberOfPages = 3;
    self.ocPage.currentPage = 0;
//    self.ocPage.currentPageIndicatorTintColor = [UIColor blueColor];
////    self.ocPage.numberOfPages = 3;
//    self.ocPage.pageIndicatorTintColor = [UIColor redColor];
    [self.view addSubview:self.ocPage];
    
    
    
    
    int VC_ImageCount = 4;
    UIScrollView  *scrollview ;
    
    UIPageControl  *PageControl ;
    
    UIButton  *TempBtn ;
    
    UIButton  *btn;
    
    UIButton   *temp_BTn;
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int pageNum = scrollView.contentOffset.x / scrollView.width;
    self.page.currentPage = pageNum;
    self.ocPage.currentPage = pageNum;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*

 
 
 2、
 
 //改变小圆点的形状
 
 PageControl.numberOfPages = 0
 
 
 
 let  GH :CGFloat = self.view.frame.size.width - 150 - CGFloat(VC_ImageCount - 1 ) * 10
 
 let  HG :CGFloat = CGFloat(VC_ImageCount)
 
 
 
 for i in 0...(VC_ImageCount - 1)
 
 {
 
 btn = UIButton(type: UIButtonType.Custom)
 
 btn.frame = CGRectMake(60 + CGFloat(i) * (GH / HG) + 30 , 20,20 , 4)
 
 btn.setBackgroundImage(UIImage(named: "E44E2A3C-6383-4B55-AE79-EDAB85DD6A7A.png"), forState: UIControlState.Normal)
 
 btn.setBackgroundImage(UIImage(named: "D9D3E0AA-67AD-4778-A8BC-A849B40CC25D.png"), forState: UIControlState.Selected)
 
 btn.tag = i + 200;
 
 //特殊处理
 
 if i == 0 {
 
 btn.selected = true
 
 Join1(btn)
 
 }
 2、实现其方法
 
 /***************************************************

//自定义 pagecoler

func Join1 (Btn: UIButton){
    
    TempBtn.selected = false
    
    TempBtn = Btn;
    
    TempBtn.selected = true
    
    scrollview.contentOffset = CGPointMake(CGFloat(TempBtn.tag - 200) * self.view.frame.size.width, 0)
    
    
}
*/

@end
