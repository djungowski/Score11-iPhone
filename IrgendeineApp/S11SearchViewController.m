//
//  S11SearchViewController.m
//  Score11
//
//  Created by Dominik Jungowski on 13.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11SearchViewController.h"

@interface S11SearchViewController ()

@end

@implementation S11SearchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Suche";
        
        // Custom initialization
        UITabBarItem *tbi = [[UITabBarItem alloc] initWithTitle:@"Suche" image:[UIImage imageNamed:@"magnifying_glass.png"] tag:1];
        [self setTabBarItem:tbi];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
