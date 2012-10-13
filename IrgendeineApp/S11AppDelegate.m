//
//  S11AppDelegate.m
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11AppDelegate.h"
#import "S11StartsViewController.h"
#import "S11NavigationController.h"
#import "S11SearchViewController.h"

@implementation S11AppDelegate
@synthesize startsViewController;
@synthesize startsNavController;
@synthesize movies;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.movies = [[NSMutableArray alloc] init];
    
    self.startsViewController = [[S11StartsViewController alloc] initWithNibName:@"S11StartsViewController" bundle:nil];
    self.startsNavController = [[S11NavigationController alloc] init];
    [self.startsNavController pushViewController:self.startsViewController animated:NO];
    
    S11SearchViewController *searchController = [[S11SearchViewController alloc] initWithNibName:@"S11SearchViewController" bundle:nil];
    self.searchNavController = [[S11NavigationController alloc] init];
    [self.searchNavController pushViewController:searchController animated:NO];
    
    UITabBarController *tbc = [[UITabBarController alloc] init];
    NSArray *vc = [[NSArray alloc] initWithObjects:self.startsNavController, self.searchNavController, nil];
    [tbc setViewControllers:vc];

//    self.window.rootViewController = self.startsNavController;
    self.window.rootViewController = tbc;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
