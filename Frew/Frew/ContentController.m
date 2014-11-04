//
//  ContentController.m
//  Frew
//
//  Created by Alvin Yim on 4/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "ContentController.h"

@implementation ContentController

- (void)viewWillAppear:(BOOL)animated {
  NSLog(@"%@", self.class);
  self.hashLabel.text = [NSString stringWithFormat:@"%d", self.hash];
  [super viewWillAppear:animated];
}

@end
