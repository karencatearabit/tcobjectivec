//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Karen Cate Arabit on 4/18/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <UIKit/UIKit.h>

//Declare a helper function taht we will use to get a path
// to the location on disk where we can save the to-do list
NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    //objects that the user can see and interact with
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    //where you will store the tasks as strings
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
