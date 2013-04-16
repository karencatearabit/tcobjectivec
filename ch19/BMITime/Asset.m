//
//  Asset.m
//  BMITime
//
//  Created by Karen Cate Arabit on 4/16/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d>",[self label] ,[self resaleValue]];
}

-(void) dealloc
{
    NSLog(@"deallocatung %@", self);
}

@end
