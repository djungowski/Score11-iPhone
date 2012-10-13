//
//  S11Data.m
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11Data.h"

@implementation S11Data

- (NSDictionary *)getJson:(NSMutableData *)receivedData
{
    return [NSJSONSerialization JSONObjectWithData:receivedData options:kNilOptions error:nil];
}

- (void)parse:(NSMutableData *)receivedData
{
    // Overload in child class
}

@end
