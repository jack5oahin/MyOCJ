//
//  OCPageControl.h
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol OCPageControlDelegate ;//这里要先声明一下，不然下面，delegate用协议修饰，会报错没声明


@interface OCPageControl : UIPageControl
@property (nonatomic, weak, nullable) id <OCPageControlDelegate> delegate;

@end


@protocol OCPageControlDelegate <NSObject>
@optional
- (void)pageControl:(OCPageControl *)pageControl didSelectDotAtIndex:(NSUInteger)index;

@end


