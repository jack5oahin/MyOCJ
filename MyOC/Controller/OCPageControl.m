//
//  OCPageControl.m
//  myObjectiveC
//
//  Created by 王鑫 on 2018/7/3.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "OCPageControl.h"

@implementation OCPageControl

-(void)setCurrentPage:(NSInteger)currentPage
{
    [super setCurrentPage:currentPage];
    
    for (NSInteger subviewIndex = 0; subviewIndex < self.subviews.count; subviewIndex++) {
        
        UIImageView *subview = self.subviews[subviewIndex];
        
        if (subviewIndex == currentPage)
        {
            subview.layer.cornerRadius = 0;
            subview.layer.masksToBounds = YES;
        }
        else
        {
            subview.layer.cornerRadius = 0;
            subview.layer.masksToBounds = YES;
        }
    }
}
@end
