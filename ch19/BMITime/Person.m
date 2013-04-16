//
//  Person.m
//  BMITime
//
//  Created by Karen Cate Arabit on 4/15/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize heightInMeters, weightInKilos;

- (float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
