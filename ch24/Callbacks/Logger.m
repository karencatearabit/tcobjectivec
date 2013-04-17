//
//  Logger.m
//  Callbacks
//
//  Created by Karen Cate Arabit on 4/17/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void) sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

//Called each time a chunk of data arrives
- (void) connection:(NSURLConnection *) connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    //Create a mutable data if it doesn't already exist
    if(!incomingData){
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

//Called when the last chunk has been processed
- (void) connectionDidFinishLoading: (NSURLConnection *) connection
{
    NSLog(@"Got it all!");
    
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //Uncomment the next time to see the entire fetch file
    //NSLog(@"The whole string is %@", string);
}

//Called if the fetch fails
- (void) connection: (NSURLConnection *) connection didFailWithError:(NSError *)error
{
    NSLog(@"Connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

- (void) zoneChange: (NSNotification *) note
{
    NSLog(@"The system time zone has changed!");
}
@end
