//
//  S11StartsViewController.m
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11AppDelegate.h"
#import "S11Movie.h"
#import "S11StartsViewController.h"
#import "S11MovieViewController.h"
#import "S11MovieList.h"
#import "S11TableViewCell.h"

@interface S11StartsViewController ()

@end

@implementation S11StartsViewController
@synthesize tableView = _tableView;
@synthesize movies = _movies;
@synthesize spinner = _spinner;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Titel fuer Navigation Bar
        self.title = @"Filmstarts";
        
        // Titel und Bild fuer TabBar

        UITabBarItem *tbi = [[UITabBarItem alloc] initWithTitle:@"Starts" image:[UIImage imageNamed:@"clapboard.png"] tag:0];
        [self setTabBarItem:tbi];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    S11AppDelegate *delegate = (S11AppDelegate *)[[UIApplication sharedApplication] delegate];
    movies = delegate.movies;
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(Add:)];
    [self loadListData];
}

- (void)loadListData
{
    S11MovieList *list = [[S11MovieList alloc] init];
    [list load];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    S11TableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[S11TableViewCell alloc] init];
    }
    S11Movie *movie = [movies objectAtIndex:indexPath.row];
    cell.textLabel.text = movie.name;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.imageView.image = movie.image;
    
    return cell;
}

- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    S11Movie *movie = [movies objectAtIndex:indexPath.row];
    S11MovieViewController *controller = [[S11MovieViewController alloc] initWithMovie:movie];
                            
    S11AppDelegate *delegate = (S11AppDelegate *)[[UIApplication sharedApplication] delegate];
    [delegate.navController pushViewController:controller animated:YES];
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}

@end
