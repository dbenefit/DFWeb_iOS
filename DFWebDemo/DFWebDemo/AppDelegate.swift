//
//  AppDelegate.swift
//  DFWebDemo
//
//  Created by qianduan-lianggq on 2023/2/28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let root = ViewController()
        let rootNavigatePage = UINavigationController(rootViewController: root)
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        self.window?.rootViewController = rootNavigatePage
        self.window?.makeKeyAndVisible()
        return true
    }

}

