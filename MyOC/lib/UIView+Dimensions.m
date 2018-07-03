//
//  UIView+UIView_Dimensions.m
//  OneCarde
//
//  Created by Vitaly Dubov on 2/1/13.
//  Copyright (c) 2013 Saritasa. All rights reserved.
//

#import "UIView+Dimensions.h"

@implementation UIView (Dimensions)

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

//- (CGFloat)right
//{
//    return self.frame.origin.x + self.frame.size.width;
//}
//
//- (void)setRight:(CGFloat)right
//{
//    CGRect frame = self.frame;
//    frame.origin.x = right - frame.size.width;
//    self.frame = frame;
//}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

//- (CGFloat)bottom
//{
//    return self.frame.origin.y + self.frame.size.height;
//}
//
//- (void)setBottom:(CGFloat)bottom
//{
//    CGRect frame = self.frame;
//    frame.origin.y = bottom - frame.size.height;
//    self.frame = frame;
//}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}


@end
