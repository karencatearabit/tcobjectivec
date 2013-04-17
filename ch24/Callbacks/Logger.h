//
//  Logger.h
//  Callbacks
//
//  Created by Karen Cate Arabit on 4/17/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
- (void) sayOuch: (NSTimer *) t;
@end
