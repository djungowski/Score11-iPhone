//
//  S11MovieListConnectionDelegate.h
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "S11URLConnection.h"
#import "S11Data.h"

//@protocol S11MovieListConnectionDelegate;

@interface S11MovieListConnectionDelegate : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate> {
    NSMutableData *receivedData;
}

@property (strong, nonatomic) S11Data *dataObject;

- (id)initWithDataObject:(S11Data *)dataObject;

@end
