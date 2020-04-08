//
//  HDTabBarController.swift
//  yanxishe-swift
//
//  Created by rumble on 2020/4/4.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.HDColorD7AB70
        
        self.addChildControllerForTabBar(vc: HDDiscoverViewController(), title: "发现", imageName: "tab_course")
        self.addChildControllerForTabBar(vc: HDPurchasedViewController(), title: "购买", imageName: "tab_purchased")
        self.addChildControllerForTabBar(vc: HDExerciseViewController(), title: "练习", imageName: "tab_execrise")
        self.addChildControllerForTabBar(vc: HDMainViewController(), title: "我的", imageName: "tab_mine")
    }
    
    func addChildControllerForTabBar(vc:UIViewController,title:String,imageName:String) -> Void {
        let naVC = HDNavigationController(rootViewController: vc)
        naVC.tabBarItem.title = title
        naVC.tabBarItem.image = UIImage(named: imageName)
        naVC.tabBarItem.selectedImage = UIImage(named: imageName + "01")
        self.addChild(naVC)
    }
}
