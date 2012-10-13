//
//  S11NavigationController.m
//  Score11
//
//  Created by Dominik Jungowski on 13.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11NavigationController.h"
#import "S11NavigationBar.h"

@interface S11NavigationController ()

@end

@implementation S11NavigationController

- (id)init
{
    self = [self initWithNavigationBarClass:[S11NavigationBar class] toolbarClass:[UIToolbar class]];
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
