//
//  HDAppDelegateTool.swift
//  yanxishe-swift
//
//  Created by rumble on 2020/4/4.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDAppDelegateTool: NSObject {
    
    static let sharedInstance = HDAppDelegateTool()
    
    /// 返回主控制器
    func chooseRootViewControllerWithOptions(_ launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> UIViewController {
        
        return HDTabBarController.init()
    }

}
