//
//  S11AppDelegate.h
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@class S11StartsViewController;

@interface S11AppDelegate : UIResponder <UIApplicationDelegate>;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) S11StartsViewController *startsViewController;

@property (strong, nonatomic) UINavigationController *startsNavController;
@property (strong, nonatomic) UINavigationController *searchNavController;

@property (strong, nonatomic) NSMutableArray *movies;

@end
