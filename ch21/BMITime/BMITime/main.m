//
//  main.m
//  BMITime
//
//  Created by Karen Cate Arabit on 4/15/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        //Create a citionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for(int i = 0; i < 10; i++) {
        
            //Create an instance of a person
            Employee *person = [[Employee alloc] init];
        
            //Give the instance variables interesting values
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            //Put the employee in the employees array
            [employees addObject:person];
        
            //Is this the 1st employee?
            if(i==0) {
                [executives setObject:person forKey:@"CEO"];
            }
        
            //Is this the 2nd employee?
            if( i == 2)
                 [executives setObject:person forKey:@"CTO"];
            
        }
        
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];

        //Create 10 assets
        for (int i = 0; i < 10; i++) {
            //Create an asset
            Asset *asset = [[Asset alloc] init];
            
            //Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //Find that employee
            Employee *randomeEmployee = [employees objectAtIndex:randomIndex];
            
            //Assign the asset to the employee
            [randomeEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@" ,allAssets);
        
        NSLog(@"executives: %@",executives);
        executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@",toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;

        
    }
    sleep(100);
    return 0;
}

