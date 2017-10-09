//
//  RoundView+Configuration.m
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "RoundView+Configuration.h"

#define DEGREES_TO_RADOANS(x) (M_PI * (x) / 180.0) // 将角度转为弧度

@implementation RoundView (Configuration)

+ (UIColor *)startColor {
  
  return [UIColor greenColor];
}

+ (UIColor *)endColor {
  
  return [UIColor yellowColor];
}

+ (UIColor *)backgroundColor {
  
  return [UIColor colorWithRed:38.0 / 255.0 green:130.0 / 255.0 blue:213.0 / 255.0 alpha:0.5];
}

+ (CGFloat)lineWidth {
  
  return 20;
}

+ (CGFloat)startAngle {
  
  return DEGREES_TO_RADOANS(-210);
}

+ (CGFloat)endAngle {
  
  return DEGREES_TO_RADOANS(30);
}

+ (STClockWiseType)clockWiseType {
  return STClockWiseNo;
}

@end
