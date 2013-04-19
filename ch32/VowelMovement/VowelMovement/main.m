//
//  main.m
//  VowelMovement
//
//  Created by Karen Cate Arabit on 4/19/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumeration)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create the array of strings to devowelize a container for new ones
        NSArray *oldStrings = [NSArray arrayWithObjects:@"KC", @"Kareny", @"Cate", @"Arabit", nil];
        
        NSLog(@"old strings: %@" ,oldStrings);
        NSMutableArray *newStrings = [NSMutableArray array];
        
        //Create a list of characters that we'll remove from the string
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        //Declare the block variable
        void (^devowelizer)(id, NSUInteger, BOOL*);
        
        //Assign a block to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                              options:NSCaseInsensitiveSearch];
            
            //Did I find a y?
            if(yRange.location != NSNotFound) {
                *stop = YES; //Prevent further iterations
                return ;    // stop this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //Iterate over the array of vowels, replacing occurenes of each
            //with an empty string
            for(NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch range:fullRange];
            }
            [newStrings addObject:newString];
            
        };//End of block assigment
        
        //Iterate over the array with our block
        [oldStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new strings: %@" ,newStrings);
    }
    return 0;
}

