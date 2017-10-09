//
//  RoundView.m
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "RoundView.h"
#import "RoundView+Configuration.h"

#define SELF_WIDTH CGRectGetWidth(self.bounds)
#define SELF_HEIGHT CGRectGetHeight(self.bounds)

@interface RoundView ()

@end

@implementation RoundView

- (void)awakeFromNib {
  
  [super awakeFromNib];
  
  self.backgroundColor = [RoundView backgroundColor];
  
  [self setupColorLayer];
  [self setupColorMaskLayer];
  [self setupViewMaskLayer];
}

/**
 *  设置整个view的遮罩
 */
- (void)setupViewMaskLayer {
  
  CAShapeLayer *layer = [self generateMaskLayer];
  self.layer.mask = layer;
  self.blueMaskLayer = layer;
}

/**
 *  设置颜色
 */
- (void)setupColorLayer {
  self.colorLayer = [CAShapeLayer layer];
  self.colorLayer.frame = self.bounds;
  [self.layer addSublayer:self.colorLayer];
  
  CAGradientLayer *layer = [CAGradientLayer layer];
  layer.frame = CGRectMake(0, 0, SELF_WIDTH, SELF_HEIGHT);
  layer.locations = @[@0, @1];
  layer.colors = @[(id) [UIColor brownColor].CGColor, (id)[UIColor yellowColor].CGColor];
  [self.colorLayer addSublayer:layer];
}

/**
 *  设置渐变色的遮罩
 */
- (void)setupColorMaskLayer {
  
  CAShapeLayer *layer = [self generateMaskLayer];
  layer.lineWidth = [RoundView lineWidth] + 0.5; // 遮罩线宽较大，防止背景遮罩有边露出来
  self.colorLayer.mask = layer;
  self.colorMaskLayer = layer;
}

/**
 *  生成一个圆环形的遮罩层
 *  因为背景遮罩与遮罩的配置都相同，所以封装出来
 *
 *  @return 环形遮罩
 */
- (CAShapeLayer *)generateMaskLayer {
  
  CAShapeLayer *layer = [CAShapeLayer layer];
  layer.frame = self.bounds;
  
  // 创建一个圆心为父视图中点的圆，半径为父视图宽的2/5，起始角度是从-240°到60°
  
  UIBezierPath *path = nil;
  if ([RoundView clockWiseType]) {
    path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(SELF_WIDTH / 2, SELF_HEIGHT / 2) radius:SELF_WIDTH / 2.5 startAngle:[RoundView startAngle] endAngle:[RoundView endAngle] clockwise:YES];
  } else {
    path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(SELF_WIDTH / 2, SELF_HEIGHT / 2) radius:SELF_WIDTH / 2.5 startAngle:[RoundView endAngle] endAngle:[RoundView startAngle] clockwise:NO];
  }
  
  layer.lineWidth = [RoundView lineWidth];
  layer.path = path.CGPath;
  layer.fillColor = [UIColor clearColor].CGColor; // 填充色为透明（不设置为黑色）
  layer.strokeColor = [UIColor blackColor].CGColor; // 随便设置一个边框颜色
  layer.lineCap = kCALineCapRound; // 设置线为圆角
  
  return layer;
}

/**
 *  在修改百分比的时候，修改遮罩的大小
 *
 *  @param persentage 百分比
 */
- (void)setPersentage:(CGFloat)persentage {
  
  _persentage = persentage;
  self.colorMaskLayer.strokeEnd = persentage;
}

@end
