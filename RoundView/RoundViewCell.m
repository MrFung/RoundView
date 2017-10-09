//
//  RoundViewCell.m
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "RoundViewCell.h"

@implementation RoundViewCell

- (void)awakeFromNib {
  [super awakeFromNib];
  //[self animationTime];
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
  self.loopProgressView.persentage = sender.value;
}

- (void)animationTime {
  [UIView animateWithDuration:0.0001 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
    self.loopProgressView.persentage = 0;
  } completion:^(BOOL finished) {
    if (finished) {
      self.loopProgressView.persentage = 1.0;
      [self animationTime];
    }
  }];
}

@end
