//
//  ViewController+Configration.m
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "ViewController+Configration.h"

@implementation ViewController (Configration)

#pragma mark - Public Methods

- (void)initProPerties {
  
}

- (void)configureView {
  [self configureTableView];
}

#pragma mark - Private Methods

- (void)configureTableView {
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  
  [self.tableView registerNib:[UINib nibWithNibName:@"RoundViewCell" bundle:nil] forCellReuseIdentifier:RoundViewCellReuseId];
}

@end
