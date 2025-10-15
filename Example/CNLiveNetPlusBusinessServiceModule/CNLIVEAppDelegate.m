//
//  CNLIVEAppDelegate.m
//  CNLiveNetPlusBusinessServiceModule
//
//  Created by oldSixMrZhang on 04/02/2020.
//  Copyright (c) 2020 oldSixMrZhang. All rights reserved.
//

#import "CNLIVEAppDelegate.h"
#import <CNLiveBServices/CNLiveBServices.h>
#import "BHTimeProfiler.h"
#import "CNLIVEViewController.h"
#import <CNLiveNetPlusBusinessServiceModule/CNLiveBServiceController.h>
@implementation CNLIVEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    [BHContext shareInstance].moduleConfigName = @"BeeHive.bundle/BeeHive";//可选，默认为BeeHive.bundle/BeeHive.plist
    [BHContext shareInstance].serviceConfigName = @"BeeHive.bundle/BHService";
    [BeeHive shareInstance].enableException = YES;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
    [[BHTimeProfiler sharedTimeProfiler] recordEventTime:@"BeeHive::super start launch"];
    
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    id<CNLiveBServiceServiceProtocol> serService = [[BeeHive shareInstance] createService:@protocol(CNLiveBServiceServiceProtocol)];
    CNLiveBServiceController *serVC = (CNLiveBServiceController *)[serService getServiceViewController];
    UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:serVC];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navCtrl;
    [self.window makeKeyAndVisible];
    
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
