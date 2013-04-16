//
//  Person.h
//  BMITime
//
//  Created by Karen Cate Arabit on 4/15/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //It has 2 instance variables
    float heightInMeters;
    int weightInKilos;
}
//You will be able to set those instance variables using these methods
@property float heightInMeters;
@property int weightInKilos;

//This method calculates the Body Mass Index
- (float) bodyMassIndex;
@end
