//
//  AppDelegate.swift
//  yanxishe-swift
//
//  Created by rumble on 2020/4/3.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        HDAppDelegateTool.setupAppearance()
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        HDAppDelegateTool.setUpWindow(window!, launchOptions)
        
        
        return true
    }


}

