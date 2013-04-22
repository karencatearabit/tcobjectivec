//
//  main.m
//  [C] 8 Types
//
//  Created by Karen Cate Arabit on 4/22/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *dataTypes = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *dataType;
        
        dataType = [NSMutableDictionary dictionary];
        [dataType setObject:@"integerType" forKey:@"dtype"];
        [dataType setObject:[NSNumber numberWithInt:10] forKey:@"value"];
        [dataTypes addObject:dataType];
        
        dataType = [NSMutableDictionary dictionary];
        [dataType setObject:@"floatType" forKey:@"dtype"];
        [dataType setObject:[NSNumber numberWithFloat:10.00] forKey:@"value"];
        [dataTypes addObject:dataType];
        
        dataType = [NSMutableDictionary dictionary];
        [dataType setObject:@"booleanType" forKey:@"dtype"];
        [dataType setObject:[NSNumber numberWithBool:TRUE] forKey:@"value"];
        [dataTypes addObject:dataType];
        
        dataType = [NSMutableDictionary dictionary];
        [dataType setObject:@"stringType" forKey:@"dtype"];
        [dataType setObject:[NSString stringWithFormat:@"yehey"] forKey:@"value"];
        [dataTypes addObject:dataType];
        

        [dataTypes writeToFile:@"/tmp/list.plist" atomically:YES];
        
//        NSArray *dataTypeList = [NSArray arrayWithContentsOfFile:@"/desktop/list.plist"];
//        
//        for(NSDictionary *d in dataTypeList) {
//            NSLog(@"%@ and %@", [d objectForKey:@"dtype"], [d objectForKey:@"value"]);
//        }
    }
    return 0;
}

