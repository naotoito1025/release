//
//  AppDelegate.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/10.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = TopViewController()
        window?.rootViewController = ViewUtil.setNavigationController(vc: vc)
        window?.makeKeyAndVisible()
        return true
    }
}

