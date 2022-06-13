//
//  AppDelegate.swift
//  CleanSwiftProject
//
//  Created by Вячеслав Квашнин on 13.06.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        let postVC = PostViewController()
        let navVC = UINavigationController(rootViewController: postVC)
        window.rootViewController = navVC
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}

