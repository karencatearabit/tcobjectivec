//
//  main.m
//  Stringz
//
//  Created by Karen Cate Arabit on 4/17/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*** WRITE FILE ***/
        /***
        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [str appendString:@"KC is awesome!\n"];
        }
        //Declrate a pointer to an NSError object, but don't instantiate it
        //NSError instance will onle be created if there is, in fact, an error
        NSError *error = nil;
        
        //Pass the NSError pointer by reference to the NSString method
        BOOL success =  [str writeToFile:@"/tmp/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
        //Test the returned BOOL, and query the NSError if the write failed
        if(success)
            NSLog(@"done writing /tmp/cool.txt");
        else
            NSLog(@"writing /tmp/cool.txt failed: %@" ,[error localizedDescription]);
         ***/
        
        /*** READ FILE ***/
        
        NSError *error = nil;
        NSString *str = [[NSString alloc]
                         initWithContentsOfFile:@"/tmp/cool.txt"
                         encoding: NSASCIIStringEncoding
                         error:&error];
        
        if(!str)
            NSLog(@"read failed: %@",[error localizedDescription]);
        else
            NSLog(@"cool.txt looks like this: %@",str);
        
    }
    return 0;
}

