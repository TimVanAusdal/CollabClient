//
//  AppDelegate.swift
//  CollabClient
//
//  Created by u1034691 on 3/17/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        window = UIWindow()
        window?.rootViewController = AccountInitialViewController()//AppController()//AboutGeneralViewController()//ProfileGeneralViewController()//AccountInitialViewController()
        //window?.rootViewController?.view = AccountInitialView()
        window?.makeKeyAndVisible()

        return true
    }

    


}

