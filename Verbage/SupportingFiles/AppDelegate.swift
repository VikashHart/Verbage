//
//  AppDelegate.swift
//  Verbage
//
//  Created by C4Q on 4/19/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit
import Firebase
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UNUserNotificationCenter.current().delegate = self
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound],  completionHandler: { (granted, error) in
            print("notifications permissions granted: \(granted)")
        })
        
        //Setup firebase
        FirebaseApp.configure()
        
        //        let loginvc = LoginViewController()
        //        let loginnavcon = UINavigationController(rootViewController: loginvc)
        //        loginvc.tabBarItem = UITabBarItem(title: "login", image: #imageLiteral(resourceName: "feed"), tag: 0)
        
        //Feed View Controller
        let feedViewController = FeedViewController()
        feedViewController.tabBarItem = UITabBarItem(title: "Feed", image: #imageLiteral(resourceName: "feed"), tag: 0)
        
        //New Post View Controller
        let newPostViewController = NewPostViewController()
        newPostViewController.tabBarItem = UITabBarItem(title: "New Post", image: #imageLiteral(resourceName: "add"), tag: 1)
        
        //Profile View Controller
        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem = UITabBarItem(title: "Profile", image: #imageLiteral(resourceName: "profile"), tag: 2)
        
        //Tab Bar Controller
        let tabBarController = UITabBarController()
        tabBarController.tabBar.barTintColor = UIColor.white
        tabBarController.viewControllers = [feedViewController, newPostViewController, profileViewController]
        
        //Window setup
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController //loginvc
        window?.makeKeyAndVisible()
        
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
}

extension AppDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.alert])
    }
}
