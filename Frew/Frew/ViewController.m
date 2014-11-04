//
//  ViewController.m
//  Frew
//
//  Created by Alvin Yim on 4/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
  self.dataSource = self;
  [super viewDidLoad];
}

- (UIViewController *)pageViewController:(UIPageViewController *)page
      viewControllerBeforeViewController:(UIViewController *)view {
  return nil;
}

- (UIViewController *)pageViewController:(UIPageViewController *)page
       viewControllerAfterViewController:(UIViewController *)view {
  return nil;
}

@end
