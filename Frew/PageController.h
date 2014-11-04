//
//  ViewController.h
//  Frew
//
//  Created by Alvin Yim on 4/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageController : UIPageViewController
  <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@end
