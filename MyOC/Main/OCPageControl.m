//
//  OCPageControl.m
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "OCPageControl.h"

@implementation OCPageControl
-(instancetype)initWithFrame:(CGRect)frame
{
       if (self = [super initWithFrame:frame])
       {
           
       }
    return self;
    
}
-(void)setNumberOfPages:(NSInteger)numberOfPages
{
    [super setNumberOfPages:numberOfPages];

//    for (NSInteger dotIndex = 0; dotIndex < self.subviews.count; dotIndex++) {
//        
//        UIView *dot = self.subviews[dotIndex];
//        
//        dot.x = 0 + dotIndex*40;
//    }
}
-(void)setCurrentPage:(NSInteger)currentPage
{
    [super setCurrentPage:currentPage];
//    [self updateDots];
//    return;
    for (NSInteger dotIndex = 0; dotIndex < self.subviews.count; dotIndex++) {
        
        UIView *dot = self.subviews[dotIndex];
        
        dot.frame = CGRectMake(-15, -15, 30, 30);

        //当然也可以通过添加图片视图来设置自定义图片
        //        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 7, 15, 3)];
        //这里我只改变了dot的背景颜色
        dot.backgroundColor = (dotIndex == self.currentPage) ? [UIColor blackColor] : [UIColor purpleColor];
        //可以像这样加载自定义的图片
        //        imageView.image = (i == self.currentPage) ? _normalImage : _highlitedImage;
        //        [dot addSubview:imageView];
    }
}

-(void)updateDots
{
    for(int i = 0; i < [self.subviews count]; i++)
    {
        //通过对self.subviews进行打印可知其是UIView类
        UIView *dot = [self.subviews objectAtIndex:i];
        //可以对dot的大小和形状进行设置
        dot.frame = CGRectMake(0, 0, 15, 3);
        //当然也可以通过添加图片视图来设置自定义图片
        //        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 7, 15, 3)];
        //这里我只改变了dot的背景颜色
        dot.backgroundColor = (i == self.currentPage) ? [UIColor blackColor] : [UIColor purpleColor];
        //可以像这样加载自定义的图片
        //        imageView.image = (i == self.currentPage) ? _normalImage : _highlitedImage;
        //        [dot addSubview:imageView];
    }
}
@end
