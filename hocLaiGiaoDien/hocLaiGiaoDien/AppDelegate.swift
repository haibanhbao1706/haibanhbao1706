//
//  AppDelegate.swift
//  hocLaiGiaoDien
//
//  Created by MACBOOK PRO  on 08/10/2022.
//

import UIKit


@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame : UIScreen.main.bounds)
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let firstViewConTroller = FirstViewController()
        window?.rootViewController = firstViewConTroller
        window?.makeKeyAndVisible()
        
        
        return true
    }

    


}

