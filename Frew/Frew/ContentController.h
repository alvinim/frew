//
//  ContentController.h
//  Frew
//
//  Created by Alvin Yim on 4/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentController : UIViewController

@property (nonatomic, assign) NSUInteger page;
@property (strong, nonatomic) IBOutlet UILabel *hashLabel;
@property (strong, nonatomic) IBOutlet UILabel *pageLabel;

@end
