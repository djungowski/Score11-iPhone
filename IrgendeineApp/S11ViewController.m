//
//  S11ViewController.m
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11AppDelegate.h"
#import "S11Movie.h"
#import "S11ViewController.h"
#import "S11MovieViewController.h"
#import "S11MovieList.h"
#import "S11TableViewCell.h"

@interface S11ViewController ()

@end

@implementation S11ViewController
@synthesize tableView = _tableView;
@synthesize movies = _movies;
@synthesize spinner = _spinner;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    S11AppDelegate *delegate = (S11AppDelegate *)[[UIApplication sharedApplication] delegate];
    movies = delegate.movies;
    self.title = @"Filmstarts";
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
