//
//  HomeController.m
//  Frew
//
//  Created by Alvin Yim on 5/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "HomeController.h"
#import "PageController.h"

@implementation HomeController

#pragma mark - View controller methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {

  if (![segue.identifier isEqual:@"container"])
     return;

  PageController *page = segue.destinationViewController;

  page.pageControl = self.pageControl;
}

@end
