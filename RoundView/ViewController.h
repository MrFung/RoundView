//
//  ViewController.h
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RoundView.h"

static NSString *const RoundViewCellReuseId = @"RoundViewCellReuseId";

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

