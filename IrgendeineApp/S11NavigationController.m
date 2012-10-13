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
    
    // Geht alles nicht :(
    
//    self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    [[self navigationItem] setRightBarButtonItem:self.editButtonItem];
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(Add:)];
    
//    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(Add:)];
//    self.navigationItem.rightBarButtonItem=button;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
