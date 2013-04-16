//
//  Employee.m
//  BMITime
//
//  Created by Karen Cate Arabit on 4/16/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "Employee.h"

@implementation Employee
@synthesize employeeID;

- (float) bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
