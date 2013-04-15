//
//  main.m
//  DateList
//
//  Created by Karen Cate Arabit on 4/15/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create 3 NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //Create an empty array
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Add the dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        int i = 0;
        for(NSDate *d in dateList) {
            NSLog(@"%d) Here is a date: %@",i ,d);
            i++;
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@",[dateList objectAtIndex:0]);
        
    }
    return 0;
}

