//
//  ADAppDelegate.m
//  Lesson8HW
//
//  Created by A D on 12/13/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADAppDelegate.h"
#import "ADStudent.h"


@implementation ADAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ADStudent * student1 = [[ADStudent alloc] init];
    ADStudent * student2 = [[ADStudent alloc] init];
    ADStudent * student3 = [[ADStudent alloc] init];
    ADStudent * student4 = [[ADStudent alloc] init];
    ADStudent * student5 = [[ADStudent alloc] init];
    ADStudent * student6 = [[ADStudent alloc] init];
    ADStudent * student7 = [[ADStudent alloc] init];
    ADStudent * student8 = [[ADStudent alloc] init];
    ADStudent * student9 = [[ADStudent alloc] init];
    ADStudent * student10 = [[ADStudent alloc] init];
    
    student1.studentName = @"One";
    student1.studentLastName = @"First";
    student1.studentGreeting = @"One is here!";
    
    student2.studentName = @"Two";
    student2.studentLastName = @"Second";
    student2.studentGreeting = @"Two is here!";
    
    student3.studentName = @"One";
    student3.studentLastName = @"Third";
    student3.studentGreeting = @"Three is here!";
    
    student4.studentName = @"Four";
    student4.studentLastName = @"Fourth";
    student4.studentGreeting = @"Four is here!";
    
    student5.studentName = @"Five";
    student5.studentLastName = @"Fifth";
    student5.studentGreeting = @"Five is here!";
    
    student6.studentName = @"Six";
    student6.studentLastName = @"Sixth";
    student6.studentGreeting = @"Six is here!";
    
    student7.studentName = @"Seven";
    student7.studentLastName = @"Seventh";
    student7.studentGreeting = @"Seven is here!";
    
    student8.studentName = @"Eight";
    student8.studentLastName = @"Eight";
    student8.studentGreeting = @"Eight is here!";
    
    student9.studentName = @"Nine";
    student9.studentLastName = @"Ninth";
    student9.studentGreeting = @"Nine is here!";
    
    student10.studentName = @"Nine";
    student10.studentLastName = @"Tenth";
    student10.studentGreeting = @"Ten is here!";
    
    //Superman Level
    
    //array that is used for sorting the students by name and last name
    NSArray * students = [NSArray arrayWithObjects:student1, student2, student3, student4,
                          student5, student6, student7,
                          student8, student9, student10, nil];
    
    //array that is used for dictionary keys
    NSArray * keys = [NSArray arrayWithObjects:[student1 studentID], [student2 studentID], [student3 studentID],
                      [student4 studentID], [student5 studentID], [student6 studentID],
                      [student7 studentID], [student8 studentID], [student9 studentID],
                      [student10 studentID], nil];
    
    //array that is used for dictionary values
    NSArray *greetings = [NSArray arrayWithObjects:student1.studentGreeting, student2.studentGreeting, student3.studentGreeting,
                          student4.studentGreeting, student5.studentGreeting, student6.studentGreeting,
                          student7.studentGreeting, student8.studentGreeting, student9.studentGreeting,
                          student10.studentGreeting, nil];
    
    //creating the dictionary
    NSDictionary * studentsDictionary = [NSDictionary dictionaryWithObjects:greetings forKeys:keys];
    
    //sorting students array by two keys - name and last name
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"studentName" ascending:YES];
    NSSortDescriptor *descriptor1 = [[NSSortDescriptor alloc] initWithKey:@"studentLastName" ascending:YES];
    NSArray *descriptors = [NSArray arrayWithObjects:descriptor, descriptor1, nil];
    NSArray *studentsSorted = [NSArray arrayWithArray:[students sortedArrayUsingDescriptors:descriptors]];
    
    //iterating through the sorted students and getting the description from the dictionary
    for(ADStudent *student in studentsSorted){
        NSString *greeting = [studentsDictionary objectForKey:student.studentID];
        NSLog(@"%@, %@, greeting - %@", student.studentName, student.studentLastName, greeting);
    }
    
    
    /*
    //Learner Level
    NSArray * students = [NSArray arrayWithObjects:student1, student2, student3, student4,
                          student5, student6, student7,
                          student8, student9, student10, nil];
    
    NSArray * keys = [NSArray arrayWithObjects:[student1 studentID], [student2 studentID], [student3 studentID],
                      [student4 studentID], [student5 studentID], [student6 studentID],
                      [student7 studentID], [student8 studentID], [student9 studentID],
                      [student10 studentID], nil];
    
    NSDictionary * schoolBook = [NSDictionary dictionaryWithObjects:students forKeys:keys];
    NSLog(@"%@", schoolBook);
    
    
    //Student Level
    for(NSString * key in [schoolBook allKeys]){
        ADStudent * student = [schoolBook objectForKey: key];
        NSLog(@"Name - %@, last name - %@, greeting - %@", student.studentName, student.studentLastName, student.studentGreeting);
    }
    
    
    //Master Level
    NSArray *keysArray = [NSArray arrayWithArray:[schoolBook allKeys]];
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:Nil ascending:YES];
    NSArray *keysSorted = [NSArray arrayWithArray:[keysArray sortedArrayUsingDescriptors:@[descriptor]]];
    
    for(NSString *key in keysSorted){
        ADStudent * student = [schoolBook objectForKey: key];
        NSLog(@"Name - %@, last name - %@, greeting - %@", student.studentName, student.studentLastName, student.studentGreeting);
    }
     */

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
}

@end
