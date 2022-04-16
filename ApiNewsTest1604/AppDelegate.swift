//
//  AppDelegate.swift
//  ApiNewsTest1604
//
//  Created by admin on 16.04.2022.
//

import UIKit

@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setInitialScreen()
        return true
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    private func setInitialScreen() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "PostList", bundle: nil)
        let initialViewController = storyboard.instantiateViewController(withIdentifier: "PostListViewController")
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()
    }
}
