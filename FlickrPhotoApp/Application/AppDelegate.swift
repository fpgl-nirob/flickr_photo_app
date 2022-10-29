//
//  AppDelegate.swift
//  FlickrPhotoApp
//
//  Created by mac 2019 on 10/25/22.
//

import UIKit
import SDWebImage

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // MARK: ApplicationDelegate methods
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let _ = SizeConfig.init()
        SDImageCache.shared.config.maxDiskSize = 1000000 * 100 // ~100 MB
        
        setSplashViewController()
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        //
    }
    
    public func setSplashViewController() {
        let splashVC = SplashViewController()
        let splashNC = CustomNavigationController(rootViewController: splashVC)
        window?.rootViewController = splashNC
        window?.makeKeyAndVisible()
    }
    
//    public func setCustomTabbar() {
//        let tabbarVC = CustomTabBarController()
//        window?.rootViewController = tabbarVC
//        window?.makeKeyAndVisible()
//        tabbarVC.setupTabBar()
//    }
    
//    public func setHomeViewController() {
//        let searchVC = PhotoSearchViewController()
//        let searchNC = CustomNavigationController(rootViewController: searchVC)
//        window?.rootViewController = searchNC
//        window?.makeKeyAndVisible()
//    }

}

