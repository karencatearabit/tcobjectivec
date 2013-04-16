//
//  Employee.h
//  BMITime
//
//  Created by Karen Cate Arabit on 4/16/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;

- (void) addAssetsObject: (Asset *)a;
- (unsigned int) valueOfAssets;

@end
