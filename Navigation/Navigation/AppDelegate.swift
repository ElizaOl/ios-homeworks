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
        
        let feedNC = UINavigationController(rootViewController: FeedViewController())
        let profileNC = UINavigationController(rootViewController: ProfileViewController())
        
        tabBarController.viewControllers = [
            feedNC,
            profileNC
        ]
        
        feedNC.tabBarItem.title = "Лента"
        feedNC.tabBarItem.image = UIImage(named: "house")
        
        profileNC.tabBarItem.title = "Профиль"
        profileNC.tabBarItem.image = UIImage(named: "person.fill")
        
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
