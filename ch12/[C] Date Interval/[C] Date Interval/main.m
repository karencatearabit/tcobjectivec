//
//  main.m
//  [C] Date Interval
//
//  Created by Karen Cate Arabit on 4/22/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1991];
        [comps setMonth:8];
        [comps setDay:22];
        [comps setHour:9];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSDateComponents *now = [[NSDateComponents alloc] init];
        [now setYear:2013];
        [now setMonth:4];
        [now setDay:22];
        [now setHour:1];
        [now setMinute:55];
        [now setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSDate *lateDate = [g dateFromComponents:now];

        double dateInterval = [lateDate timeIntervalSinceDate: dateOfBirth];
        
        printf("%.2f\n", dateInterval);
        
            }
    return 0;
}

