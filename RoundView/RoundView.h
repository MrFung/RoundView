//
//  RoundView.h
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSInteger, STClockWiseType) {
  STClockWiseYes,
  STClockWiseNo
};

@interface RoundView : UIView

@property (assign, nonatomic) CGFloat persentage;

@property (strong, nonatomic) CAShapeLayer *colorMaskLayer; // 颜色遮罩
@property (strong, nonatomic) CAShapeLayer *colorLayer; // 颜色
@property (strong, nonatomic) CAShapeLayer *blueMaskLayer; // 背景遮罩

@end
