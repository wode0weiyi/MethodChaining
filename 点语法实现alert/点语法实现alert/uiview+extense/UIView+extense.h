//
//  UIView+extense.h
//  点语法实现alert
//
//  Created by 胡志辉 on 2018/7/24.
//  Copyright © 2018年 胡志辉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (extense)
/*注释*/
@property (nonatomic , copy) UIView *(^setFrame)(CGFloat x, CGFloat y, CGFloat w, CGFloat h);
@end
