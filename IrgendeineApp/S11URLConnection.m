//
//  S11URLConnection.m
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11URLConnection.h"
#import "S11MovieListConnectionDelegate.h"

@implementation S11URLConnection

- (id)initWithUrl:(NSString *)urlString dataObject:(S11Data *)dataObject
{
    url = [NSURL URLWithString:urlString];
    
    request = [NSURLRequest requestWithURL:url];
    S11MovieListConnectionDelegate *connectionDelegate = [[S11MovieListConnectionDelegate alloc] initWithDataObject:dataObject];
    
    self = [super initWithRequest:request delegate:connectionDelegate];
    
    return self;
}

- (void)load
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self start];
    });
}

@end
