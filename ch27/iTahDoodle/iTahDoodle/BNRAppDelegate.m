//
//  BNRAppDelegate.m
//  iTahDoodle
//
//  Created by Karen Cate Arabit on 4/18/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "BNRAppDelegate.h"

//helper function to fetch the path to our to-do data stored on disk
NSString *docPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
}

@implementation BNRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    //Attempt to load an existing to-do dataset from am array stored frpm
    NSArray *plist = [NSArray arrayWithContentsOfFile:docPath()];

    if(plist) {
        //If there was a dataset available, copy it into our ptofanes
        tasks = [plist mutableCopy];
    }
    else {
        //otherwise, just create an empty one to get us started
        tasks = [[NSMutableArray alloc] init];
    }
     
    //Is tasks empty?
    if ([tasks count] ==0) {
        //Put some string in it
        [tasks addObject:@"Walk the dogs"];
        [tasks addObject:@"Walk the dogs"];
        [tasks addObject:@"Walk the dogs"];
   }

    //Create and configure the UIWindow instance
    //A GRect is a struct with an origin (x,y)and size (width, height)
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc]initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    //Define the frame rectangles of the three UI elements
    // CGRect() creates a CGRectfrom (x, y, width, ehgith)
    CGRect tableFrame = CGRectMake(0, 80, 320, 380);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    //Create and configure the table view
    taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                             style: UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    //Make this object the table view's DataSource
    [taskTable setDataSource:self];
    
    //Create and configure the text field where new tasks will be typed
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Type a task, tap Insert"];
    
    //Create and configure a rounder rect Insert button
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    
    //Buttons behave using target/action callback
    //Configure the insert button's action to call this object's -addTask: method
    [insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    //Give the button a title
    [insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    //Add our three UI elements to the window
    [[self window] addSubview:taskTable];
    [[self window] addSubview:taskField];
    [[self window] addSubview:insertButton];
    
    //Finalize the window and put it on the screen
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    [[self window] makeKeyAndVisible];
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    //Save our tasks array to disk
    [tasks writeToFile:docPath() atomically:YES];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    //Save our tasks array to disk
    [tasks writeToFile:docPath() atomically:YES];
}

#pragma mark - Table View management
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //Because this table view only has one section,
    //the number of rows in it is equal to the number of items in our tasks array
    return [tasks count];
}

- (BOOL)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //to improve performance, we reconfigure cells in memory
    //that have scrolled off the screen and hand them back
    //with new contents instead of always creating new cells
    //First, we check to see if there's a cell available for reuse
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(!c) {
        //.. and only allocate a new cell if none are available
        c = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    //Then we (re)configure the cell based on the model object
    //in this case our out todoItems array
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    //and hand back to the table view properly configured cell
}

-(void)addTask:(id)sender
{
    //Get the to-do item
    NSString *t = [taskField text];
    
    //quit here if taskfield is empty
    if([t isEqualToString:@""]) {
        return;
    }
    
    //Add it to our woking array
    [tasks addObject:t];
    //refresh the table so that the new item shows up
    [taskTable reloadData];
    //and clear out the text field
    [taskField setText:@""];
    //Dismiss the keyboard
    [taskField resignFirstResponder];
}
@end
