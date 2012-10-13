//
//  S11MovieListConnectionDelegate.m
//  Score11
//
//  Created by Dominik Jungowski on 12.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11MovieListConnectionDelegate.h"

@implementation S11MovieListConnectionDelegate

- (id)initWithDataObject:(S11Data *)dataObject
{
    self = [super init];
    receivedData = [[NSMutableData alloc] init];
    self.dataObject = dataObject;
    return self;
}

- (void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    NSURLCredential *cred = [[NSURLCredential alloc] initWithUser:@"score11_iphone" password:@"90a9d5f743ad4be788ff071b32e884ff762499d1" persistence:NSURLCredentialPersistencePermanent];
    
    [[challenge sender] useCredential:cred forAuthenticationChallenge:challenge];
}

- (void)connection:(NSURLConnection *)connection didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    NSLog(@"Cancel auth");
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    // Reset Data
    [receivedData setLength:0];
    // Get HTTP Response
//    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
//    int statusCode = [httpResponse statusCode];
    // Handle status Codes here
//    NSLog(@"%d", statusCode);
//    NSLog(@"%@", response);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    // Let the Parser do the rest
    [self.dataObject parse:receivedData];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (nil != data) {
        [receivedData appendData:data];
    }
}

@end
