//
//  ViewController.m
//  Frew
//
//  Created by Alvin Yim on 4/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "ViewController.h"
#import "ContentController.h"

@interface ViewController () { NSUInteger total; }

@end

@implementation ViewController

- (ContentController *)createPage {
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone"
                                                       bundle:nil];

  return [storyboard instantiateViewControllerWithIdentifier:@"content"];
}

#pragma mark - View controller methods

- (void)viewDidLoad {

  total = 5;
  self.dataSource = self;

  ContentController *content = self.createPage;
  content.page = 0;

  [self setViewControllers:@[ content ]
                 direction:UIPageViewControllerNavigationDirectionForward
                  animated:NO
                completion:NULL];

  [super viewDidLoad];
}

#pragma mark - Page view controller data source methods

- (UIViewController *)pageViewController:(UIPageViewController *)pageView
      viewControllerBeforeViewController:(UIViewController *)view {

  ContentController *content = (ContentController *)view;

  if (content.page <= 0)
    return nil;

  ContentController *preious = self.createPage;
  preious.page = content.page - 1;

  return preious;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageView
       viewControllerAfterViewController:(UIViewController *)view {

  ContentController *content = (ContentController *)view;

  if (total - 1 <= content.page)
    return nil;

  ContentController *next = self.createPage;
  next.page = content.page + 1;

  return next;
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)view { return total; }

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)view {

  ContentController *content = view.viewControllers[0];

  return content.page;
}

@end
