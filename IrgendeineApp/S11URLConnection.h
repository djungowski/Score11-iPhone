//
//  S11URLConnection.h
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S11Data.h"

@interface S11URLConnection : NSURLConnection {
    NSURL *url;
    NSURLRequest *request;
}

- (id)initWithUrl: (NSString *)urlString dataObject:(S11Data *)dataObject;
- (void)load;

@end
