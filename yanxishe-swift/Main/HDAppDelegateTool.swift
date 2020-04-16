//
//  HDAppDelegateTool.swift
//  yanxishe-swift
//
//  Created by rumble on 2020/4/4.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDAppDelegateTool: NSObject {
        
    /// 返回主控制器
    class func setUpWindow(_ window:UIWindow, _ launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        
        window.backgroundColor = UIColor.white;
        window.makeKeyAndVisible()
        
        let userData = UserDefaults.standard.dictionary(forKey: HDUserData)
        let userModel:HDUserModel = HDUserModel.deserialize(from: userData) ?? HDUserModel()
        
        window.rootViewController = (userModel.uid != nil) ? HDTabBarController() : HDNavigationController(rootViewController: HDLoginController())
    }
    
    class func setupAppearance() {
        
        ///< 配置导航栏
        let nav = UINavigationBar.appearance()
        nav.barTintColor = .white
        nav.tintColor = HDColorTitle
        
        let navImg = UIImage.init(named: "nav_back_black_btn")
        
        ///< 生成我们需要的图片
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 9+6, height: 16+4), false, 0)
        navImg?.draw(in: CGRect(x: 6, y: 2, width: 9, height: 16))
        let iimage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        nav.backIndicatorImage = iimage
        nav.backIndicatorTransitionMaskImage = iimage
        
        
        
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = HDColorD7AB70
        tabbar.backgroundColor = .white
        tabbar.isTranslucent = false
        
        let barItem = UIBarButtonItem.appearance()
        
        ///<1.隐藏返回按钮 第一种方法
        // barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.clear], for: .normal)
        // barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.clear], for: .highlighted)
        
        ///< 向左面偏移100
        barItem.setBackButtonTitlePositionAdjustment(UIOffset.init(horizontal: -100, vertical: 0),for:.default)
        
        barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : HDColorD7AB70, NSAttributedString.Key.font : HDDefaultFont(10)], for: .selected)
        barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : HDColor999999, NSAttributedString.Key.font : HDDefaultFont(10)], for: .normal)
    }

}
