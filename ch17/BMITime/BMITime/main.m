//
//  main.m
//  BMITime
//
//  Created by Karen Cate Arabit on 4/15/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an instance of a person
        Person *person = [[Person alloc] init];
        
        //Give the instance variables interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        //Call bodyMassIndex method
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d, %.2f)  has a BMI of %f",[person weightInKilos] ,[person heightInMeters] ,bmi);
    }
    return 0;
}

