//
//  ViewController.m
//  Frew
//
//  Created by Alvin Yim on 4/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "PageController.h"
#import "ContentController.h"

@interface PageController () { NSMutableArray *pages; }

@end

@implementation PageController

#pragma mark - View controller methods

- (void)viewDidLoad {

  UIView *view = self.view.subviews[0];
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone"
                                                       bundle:nil];

  self.dataSource = self;
  self.delegate = self;
  self.view.clipsToBounds = NO;
  view.clipsToBounds = NO;
  pages = [NSMutableArray array];

  [@[
    @"adelaide",
    @"tree",
    @"new york"
  ] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {

    ContentController *content = [storyboard instantiateViewControllerWithIdentifier:obj];

    content.page = idx;
    [pages addObject:content];
  }];

  self.pageControl.currentPage = 0;
  self.pageControl.numberOfPages = pages.count;

  [self setViewControllers:@[ pages[0] ]
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

  return pages[content.page - 1];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageView
       viewControllerAfterViewController:(UIViewController *)view {

  ContentController *content = (ContentController *)view;

  if (pages.count - 1 <= content.page)
    return nil;

  return pages[content.page + 1];
}

#pragma mark - Page view controller delegate

- (void)pageViewController:(UIPageViewController *)page
        didFinishAnimating:(BOOL)finished
   previousViewControllers:(NSArray *)controllers
       transitionCompleted:(BOOL)completed {

  ContentController *content = page.viewControllers[0];

  self.pageControl.currentPage = content.page;
  [self.pageControl updateCurrentPageDisplay];
}

@end
