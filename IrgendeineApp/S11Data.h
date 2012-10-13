//
//  S11Data.h
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface S11Data : NSObject

- (NSDictionary *)getJson: (NSMutableData *)receivedData;
- (void)parse: (NSMutableData *)receivedData;

@end
