//
//  AppDelegate.swift
//  EnglishCentral-Case
//
//  Created by Yasin Akbas on 8.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let container = AppContainer(window: window)
        container.router.initializeRootViewController()
        return true
    }
}

