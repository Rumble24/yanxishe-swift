//
//  HDBaseViewController.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/8.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDBaseViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if HDControllerTool.needHideNav(self) && !self.isKind(of: UINavigationController.classForCoder()) {
            self.navigationController?.setNavigationBarHidden(true, animated: animated)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if HDControllerTool.needHideNav(self) && !self.isKind(of: UINavigationController.classForCoder()) {
            self.navigationController?.setNavigationBarHidden(false, animated: animated)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configView()
    }
    
}


extension HDBaseViewController {

    func configView() {
        self.view.backgroundColor = UIColor.white

        
//        let backBut = UIBarButtonItem.init()
//        backBut.title = " "
//        self.navigationItem.leftBarButtonItem = backBut
    }
}
