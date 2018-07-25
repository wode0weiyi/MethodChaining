//
//  UIView+extense.m
//  点语法实现alert
//
//  Created by 胡志辉 on 2018/7/24.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import "UIView+extense.h"

@implementation UIView (extense)
@dynamic setFrame;
- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))setFrame{
    return ^(CGFloat x, CGFloat y,CGFloat w,CGFloat h){
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}
@end
