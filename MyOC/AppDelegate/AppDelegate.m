//
//  AppDelegate.m
//  myObjectiveC
//
//  Created by Glory Staffing on 2018/6/6.
//  Copyright © 2018年 My Organization. All rights reserved.
//

#import "AppDelegate.h"
#import "OCTabBarController.h"
#import "TabOneNavigationController.h"
#import "TabOneTableViewController.h"
#import "ViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    TabOneTableViewController *tabOneTVC = [[TabOneTableViewController alloc] initWithNibName:@"TabOneTableViewController" bundle:nil];
    TabOneNavigationController *tabOneNC = [[TabOneNavigationController alloc] initWithRootViewController:tabOneTVC];
    
    tabOneTVC.tabBarItem.title = @"基础";
    tabOneTVC.tabBarItem.image = [[UIImage imageNamed:@"Safari"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    TwoViewController *vc2 = [[TwoViewController alloc] initWithNibName:@"TwoViewController" bundle:nil];
    //下面两行代码，必须写在这里，不能写在vc2的ViewDidLoad里，因为，处理tabbarController的item的时候，还没有开始加载vc2呢,当然不会加载item了。
    vc2.tabBarItem.title = @"QQ";
    vc2.tabBarItem.image = [[UIImage imageNamed:@"QQ"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ThreeViewController *vc3 = [[ThreeViewController alloc] initWithNibName:@"ThreeViewController" bundle:nil];
    vc3.tabBarItem.title = @"Chrome";
    vc3.tabBarItem.image = [[UIImage imageNamed:@"Chrome"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    FourViewController *vc4 = [[FourViewController alloc] initWithNibName:@"FourViewController" bundle:nil];
    vc4.tabBarItem.title = @"Xcode";
    vc4.tabBarItem.image = [[UIImage imageNamed:@"Xcode"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    OCTabBarController *tabC = [[OCTabBarController alloc] init];
    //tabC.selectedIndex = 2; 必须写在“tabC.viewControllers = @[tabOneNC, vc2, vc3, vc4];”后面
    //    tabC.viewControllers = @[tabOneNC, vc2, vc3, vc4];
    [tabC addChildViewController:tabOneNC];
    [tabC addChildViewController:vc2];
    [tabC addChildViewController:vc3];
    [tabC addChildViewController:vc4];
    
    tabC.selectedIndex = 0;
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = tabC;
    [self.window makeKeyAndVisible];
    
    
    

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
