//
//  main.m
//  BMITime
//
//  Created by Karen Cate Arabit on 4/15/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an instance of a person
        Employee *person = [[Employee alloc] init];
        
        //Give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        //Call bodyMassIndex method
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d  has a BMI of %f",[person employeeID] ,bmi);
        
    }
    return 0;
}

