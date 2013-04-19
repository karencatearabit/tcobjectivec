//
//  NSString+VowelCounting.m
//  VowelCounter
//
//  Created by Karen Cate Arabit on 4/19/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "NSString+VowelCounting.h"

@implementation NSString (VowelCounting)
-(int) voweCount
{
    NSCharacterSet *charSet =
    [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count = [self length];
    
    int sum = 0;
    
    for(int i=0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if([charSet characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}
@end
