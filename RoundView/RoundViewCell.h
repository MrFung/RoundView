//
//  RoundViewCell.h
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoundView.h"

//@protocol ProgressDelegate;

//@end

@interface RoundViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet RoundView *loopProgressView;

//@property (nonatomic, weak) id <ProgressDelegate

@end
