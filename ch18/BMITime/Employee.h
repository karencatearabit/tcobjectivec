//
//  Employee.h
//  BMITime
//
//  Created by Karen Cate Arabit on 4/16/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Employee : Person
{
    int employeeID;
    NSString *lastName;
    Person *spouse;
    NSMutableArray *children;
}
@property int employeeID;

@end
