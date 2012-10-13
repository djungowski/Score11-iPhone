//
//  S11MovieViewController.m
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11MovieViewController.h"

@interface S11MovieViewController ()

@end

@implementation S11MovieViewController

- (id)initWithMovie:(S11Movie *)movie
{
    self = [super init];
    self.movie = movie;
    self.title = @"Filmdetails";
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [movieTitle setText:self.movie.name];
    
    NSString *thumbName = [[NSString alloc] initWithFormat:@"thumb-%@.gif", self.movie.thumb];
    UIImage *thumbImage = [UIImage imageNamed:thumbName];
    thumb.image = thumbImage;
    
    movieImage.image = self.movie.image;
    
    NSString *peopleOutlineCombined = [[NSString alloc] initWithFormat:@"von %@\nmit %@", self.movie.director, self.movie.actor];
    [peopleOutline setText:peopleOutlineCombined];
    
    NSString *ratingText = [[NSString alloc] initWithFormat:@"%@ (%@ Wertungen)", self.movie.rating, self.movie.ratings];
    [rating setText:ratingText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end