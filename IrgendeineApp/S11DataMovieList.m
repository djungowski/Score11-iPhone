//
//  S11DataMovieList.m
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11DataMovieList.h"
#import "S11AppDelegate.h"
#import "S11Movie.h"
#import "S11StartsViewController.h"

@implementation S11DataMovieList

- (void)parse:(NSMutableData *)receivedData
{
    NSDictionary *response = [super getJson:receivedData];
    
    S11AppDelegate *appDelegate = (S11AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSEnumerator *e = [response objectEnumerator];
    id movieObject;
    
    while (movieObject = [e nextObject]) {
        UIImage *image;
        
        NSString *hasImage = [movieObject objectForKey:@"hasimage"];
        if ([hasImage isEqual:@"y"]) {
            NSURL *imageURL = [NSURL URLWithString:[movieObject objectForKey:@"image"]];
            NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
            image = [UIImage imageWithData:imageData];
        } else {
            image = [UIImage imageNamed:@"logo-movie.png"];
        }
        
        S11Movie *movie = [[S11Movie alloc] initWithName:[movieObject objectForKey:@"movietitle"] image:image];
        movie.actor = [movieObject objectForKey:@"actor"];
        movie.director = [movieObject objectForKey:@"director"];
        movie.thumb = [movieObject objectForKey:@"thumb"];
        movie.rating = [movieObject objectForKey:@"ratingsavg"];
        movie.ratings = [movieObject objectForKey:@"ratings"];
        [appDelegate.movies addObject:movie];
    }
    S11StartsViewController *viewController = appDelegate.viewController;
    
    [viewController.spinner stopAnimating];
    [viewController.tableView reloadData];
}

@end
