//
//  S11MovieList.m
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11MovieList.h"
#import "S11DataMovieList.h"

@implementation S11MovieList

- (id)init
{
    self = [super initWithUrl:@"http://api.score11.de/list/moviestart.json?limit=20" dataObject:[[S11DataMovieList alloc] init]];
    return self;
}

@end
