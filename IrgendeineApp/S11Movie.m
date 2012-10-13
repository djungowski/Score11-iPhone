//
//  S11Movie.m
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11Movie.h"

@implementation S11Movie

@synthesize name;
@synthesize year;
@synthesize actor;
@synthesize director;
@synthesize image;
@synthesize thumb;
@synthesize rating;
@synthesize ratings;

- (id)initWithName:(NSString *)movieName image:(UIImage *)image
{
    self = [self init];
    self.name = movieName;
    self.image = image;
    self.year = 0;
    return self;
}

- (id)initWithNameAndYear:(NSString *) movieName year:(NSNumber *) movieYear
{
    self = [self init];
    self.name = movieName;
    self.year = movieYear;
    return self;
}

@end
