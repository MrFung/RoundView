//
//  ViewController.m
//  RoundView
//
//  Created by 郭枫 on 2017/8/31.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+Configration.h"
#import "RoundViewCell.h"

static NSString *const MainStoryboardName = @"Main";
static NSString *const RoundViewControllerIdentifier = @"ViewController";

@interface ViewController ()

@end

@implementation ViewController

+ (instancetype)create {
  UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:MainStoryboardName bundle:nil];
  ViewController *viewController = [mainStoryboard instantiateViewControllerWithIdentifier:RoundViewControllerIdentifier];
  
  return viewController;
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];
  [self configureView];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  RoundViewCell *roundView = [tableView dequeueReusableCellWithIdentifier:RoundViewCellReuseId forIndexPath:indexPath];
  
  return roundView;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 500;
}



@end
