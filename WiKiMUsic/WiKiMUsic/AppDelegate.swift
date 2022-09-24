//
//  AppDelegate.swift
//  WiKiMUsic
//
//  Created by 周晨凯 on 2022/9/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //设置默认显示界面
        let controller = SplashViewController()
        self.window = UIWindow(frame: UIScreen.main.bounds)
        //此处为导航控制器，有了导航控制器后页面才可以使用pushcontroller进行跳转
        window!.rootViewController = UINavigationController(rootViewController: controller)
        window!.makeKeyAndVisible()
        return true
    }

}

