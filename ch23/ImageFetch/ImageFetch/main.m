//
//  main.m
//  ImageFetch
//
//  Created by Karen Cate Arabit on 4/17/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*** WRITE NSDATA TO A FILE ***/
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if(!data) {
            NSLog(@"fetch failed: %@",[error localizedDescription]);
            return 1;
        }
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                              options:NSDataWritingAtomic
                                   error:&error];
        
        if(!written) {
            NSLog(@"Write failed: %@]",[error localizedDescription]);
            return 1;
        }
        
        NSLog(@"success!");
        
        /*** READ NSDATA FROM A FILE ***/
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from disk has %lu bytes", [readData length]);
        
    }
    return 0;
}

