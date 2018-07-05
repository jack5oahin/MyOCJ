//
//  OCPageControl.m
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//
#define dotW 30
#define magrin 5

#import "OCPageControl.h"

@interface OCPageControl()
{
    BOOL haveBtn;
}
@end

@implementation OCPageControl

-(instancetype)initWithFrame:(CGRect)frame
{
       if (self = [super initWithFrame:frame])
       {
           haveBtn = NO;
           NSLog(@"%s",__FUNCTION__);
       }
    return self;
    
}

-(void)setNumberOfPages:(NSInteger)numberOfPages
{
    [super setNumberOfPages:numberOfPages];
    NSLog(@"%s",__FUNCTION__);
    //下面是，给每一个dot加上一个button，打上tag，来判断点到哪一个dot上了，并准确的跳转到对应的scrollview上。
        for (int i=0; i<[self.subviews count]; i++) {
            
        }
}

-(void)setCurrentPage:(NSInteger)currentPage
{
    [super setCurrentPage:currentPage];
    NSLog(@"%s",__FUNCTION__);
#warning 使用重写“- (void)layoutSubviews”的方式,这里跳过
    return;
    [self updateDots];
    
}



- (void)layoutSubviews
{
    [super layoutSubviews];
    NSLog(@"%s",__FUNCTION__);
    
    
    
    //计算圆点间距
    CGFloat marginX = dotW + magrin;
    
    //计算整个pageControll的宽度
    CGFloat newW = (self.subviews.count - 1 ) * marginX;
    
    //设置新frame
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, newW + dotW, dotW);
    
    //设置居中
    CGPoint center = self.center;
    center.x = self.superview.center.x;
    self.center = center;
    
    //遍历subview,设置圆点frame
    for (int i=0; i<[self.subviews count]; i++) {
//        UIImageView* dot = [self.subviews objectAtIndex:i];
        
        UIView* dot = [self.subviews objectAtIndex:i];
        
        
        if (i == self.currentPage) {
            [dot setFrame:CGRectMake(i * marginX, 0, dotW, dotW)];
            
#warning 之前用“dot.frame.origin.y”来充当y值，但是，发现会变，后面代码，添加了button之后，这个值会增大10，索性，直接给了固定值0
//            [dot setFrame:CGRectMake(i * marginX, dot.frame.origin.y, dotW, dotW)];
        
        }else {
            [dot setFrame:CGRectMake(i * marginX, 0, dotW, dotW)];
        }
#warning 用%d输出CGFloat。NSLog(@"idx:%d--dot'y:%d",i,dot.frame.origin.y);
        
    }
    
    if (!haveBtn)
    {
        haveBtn = YES;
            for (int i=0; i<[self.subviews count]; i++) {
                UIView* dot = [self.subviews objectAtIndex:i];
                
                dot.userInteractionEnabled = YES;

                
                UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, dotW-10, dotW-10)];
                btn.layer.cornerRadius = 3.5;
                btn.backgroundColor = [UIColor blueColor];
                btn.alpha = 0.5;
                btn.tag = i;
                [btn addTarget:self action:@selector(clickDotBtn:) forControlEvents:UIControlEventTouchUpInside];
                [dot addSubview:btn];
            }
    }
    
    
 
}

- (void)clickDotBtn:(UIButton *)btn
{
    [self.delegate pageControl:self didSelectDotAtIndex:btn.tag];
}

-(void)updateDots
{
    for(int i = 0; i < [self.subviews count]; i++)
    {
        //通过对self.subviews进行打印可知其是UIView类
        UIView *dot = [self.subviews objectAtIndex:i];
        //可以对dot的大小和形状进行设置
        dot.bounds = CGRectMake(0, 0, 15, 3);
        //当然也可以通过添加图片视图来设置自定义图片
        //        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 7, 15, 3)];
        //这里我只改变了dot的背景颜色
        dot.backgroundColor = (i == self.currentPage) ? [UIColor blackColor] : [UIColor whiteColor];
        //可以像这样加载自定义的图片
        //        imageView.image = (i == self.currentPage) ? _normalImage : _highlitedImage;
        //        [dot addSubview:imageView];
    }
}

/*                                           **总  结**
 0.dot 原始frame = (-3.5 -3.5; 7 7)
 1.简单改变pageControl样式，重写“-(void)setCurrentPage:(NSInteger)currentPage”就可以了。缺点，不能“顺利”改变圆点的位置。
 2.高级一点，在“- (void)layoutSubviews”中，重写，可以任意改变样式，尤其是，可以修改“位置”。
 3.要求多的话，感觉还是用view自定义一个来的方便。
 */
@end
