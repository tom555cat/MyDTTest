//
//  AppDelegate.m
//  MyDTTest
//
//  Created by tom555cat on 2021/7/18.
//

#import "AppDelegate.h"
#import "DemoSnippetsViewController.h"

#import "DTCoreText.h"
//#import "UIView+DTDebug.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // register a custom class for a tag
    [DTTextAttachment registerClass:[DTObjectTextAttachment class] forTagName:@"oliver"];
    
    // preload font matching table
    [DTCoreTextFontDescriptor asyncPreloadFontLookupTable];
    
    // for debugging, we make sure that UIView methods are only called on main thread
    //[UIView toggleViewMainThreadChecking];
    
//    // Create window
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];;
//    
//    // Create the view controller
//    DemoSnippetsViewController *snippetsViewController = [[DemoSnippetsViewController alloc] init];
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:snippetsViewController];
//    
//    // Display the window
//    window.rootViewController = navigationController;
//    [window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
