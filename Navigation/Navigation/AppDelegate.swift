//
//  AppDelegate.swift
//  Navigation
//
//  Created by Elizabeth Olubowale on 20.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBarController = UITabBarController()
        
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        let feedNC = UINavigationController(rootViewController: FeedViewController())
        let logInNC = UINavigationController(rootViewController: LogInViewController())
        
        tabBarController.viewControllers = [feedNC, logInNC]
        
        feedNC.tabBarItem.title = "Feed"
        feedNC.tabBarItem.image = UIImage(systemName: "house")
        
        logInNC.tabBarItem.title = "Profile"
        logInNC.tabBarItem.image = UIImage(systemName: "person.fill")
        
        
        let tbAppearance: UITabBarAppearance = UITabBarAppearance()
        tbAppearance.configureWithDefaultBackground()
        UITabBar.appearance().standardAppearance = tbAppearance
        UITabBar.appearance().scrollEdgeAppearance = tbAppearance
        
        return true
    }
}
