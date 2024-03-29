//
//  AppDelegate.m
//  ObjCNSwift
//
//  Created by Vikram Sinha on 19/02/19.
//  Copyright © 2019 Vikram Sinha. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[@"12", @"8", @"21", @"5", @"2", @"62", @"54"]];
//    int max = ((NSString*)arr.firstObject).intValue;
//    int sorted = 0;
//    do {
//        sorted = 1;
//        int max = ((NSString*)arr.firstObject).intValue;
//        for (int i = 1; i<arr.count; i++)
//        {
//            int maxT = ((NSString*)[arr objectAtIndex:i]).intValue;
//            if(max > maxT)
//            {
//                [arr replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%d", max]];
//                [arr replaceObjectAtIndex:i-1 withObject:[NSString stringWithFormat:@"%d", maxT]];
//                sorted = 0;
//            }
//            else{
//                max = maxT;
//            }
//        }
//        NSLog(@"sorted: %d", sorted);
//    } while (sorted == 0);
    
    //        optimized more than geeksforgeek
    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[@"12", @"6", @"2", @"9", @"58",@"8", @"21", @"5", @"2", @"62", @"54"]];
    int max = ((NSString*)arr.firstObject).intValue;
    int interInc = 0;
    int outterInc = 0;
    int lstCunt = (int)arr.count;
    int timSwapped = 0;
    int sorted = 0;
    do {
        sorted = 1;
        max = ((NSString*)arr.firstObject).intValue;
        timSwapped = 0;
        for (int i = 1; i<lstCunt; i++)
        {
            int maxT = ((NSString*)[arr objectAtIndex:i]).intValue;
            if(max > maxT)
            {
                [arr replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%d", max]];
                [arr replaceObjectAtIndex:i-1 withObject:[NSString stringWithFormat:@"%d", maxT]];
                sorted = 0;
                timSwapped++;
            }
            else{
                max = maxT;
            }
            interInc++;
        }
        NSLog(@"sorted: %d", sorted);
        outterInc++;
        lstCunt--;
        if(timSwapped == 1)
            break;
    } while (sorted == 0);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
