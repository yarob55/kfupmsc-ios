//
//  AppDelegate.swift
//  KFUPMSC
//
//  Created by Ammar AlTahhan on 08/01/2018.
//  Copyright © 2018 Ammar AlTahhan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var drawerContainer: MMDrawerController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        buildNavigationDrawer()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func buildNavigationDrawer() {
        // Instantiate Main.storyboard
        let mainStoryBoard:UIStoryboard = UIStoryboard(name:"Main", bundle:nil)
        
        // Create View Controllers
        let mainPage:TabBarViewController = mainStoryBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        let main = mainStoryBoard.instantiateViewController(withIdentifier: "MatchesViewController")
        let matches = mainStoryBoard.instantiateViewController(withIdentifier: "MatchesViewController")
        let scorers = mainStoryBoard.instantiateViewController(withIdentifier: "ScorersViewController")
        let mainPageVcs = [UINavigationController.init(rootViewController: main),
                           UINavigationController.init(rootViewController: matches),
                           UINavigationController.init(rootViewController: scorers)]
        mainPage.tabBarController?.setViewControllers(mainPageVcs, animated: false)
        
        let rightSideMenu:RightSideViewController = mainStoryBoard.instantiateViewController(withIdentifier: "RightSideViewController") as! RightSideViewController
        rightSideMenu.mainTabbarController = mainPage
        
        
        
        
        // Wrap into Navigation controllers
        let rightSideMenuNav = UINavigationController(rootViewController:rightSideMenu)
        
        // Cerate MMDrawerController
        drawerContainer = MMDrawerController(center: mainPage, rightDrawerViewController: rightSideMenuNav)
        
        drawerContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView
        drawerContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView
        
        // Assign MMDrawerController to our window's root ViewController
        window?.rootViewController = drawerContainer
        window?.makeKeyAndVisible()
    }


}

