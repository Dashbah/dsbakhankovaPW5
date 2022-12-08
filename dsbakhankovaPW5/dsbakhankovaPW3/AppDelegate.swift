//
//  AppDelegate.swift
//  dsbakhankovaPW3
//
//  Created by Dashbah on 30.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let navigationController =
    UINavigationController(rootViewController:
                            WelcomeViewController())
    // swiftlint:disable line_length
    // 
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}
