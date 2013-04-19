//
//  main.m
//  VowelCounter
//
//  Created by Karen Cate Arabit on 4/19/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *string = @"Hello World!";
        NSLog(@"%@ has %d vowels", string ,[string voweCount]);
        
    }
    return 0;
}

