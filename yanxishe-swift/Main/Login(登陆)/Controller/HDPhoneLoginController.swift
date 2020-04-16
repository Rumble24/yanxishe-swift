//
//  HDPhoneLoginController.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/16.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDPhoneLoginController: HDBaseViewController {

    var phoneField:UITextField?
    
    var passwordField:UITextField?
    
    var loginBtn:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.createView()
        
        self.layoutViews()
    }
}

extension HDPhoneLoginController {
    
    func createView() {
        self.title = "密码登陆"
        
        self.phoneField = UITextField.init()
        self.phoneField?.keyboardType = .numberPad
        self.phoneField?.placeholder = "请输入手机号"
        self.view.addSubview(self.phoneField!)
        
        self.passwordField = UITextField.init()
        self.phoneField?.isSecureTextEntry = true
        self.passwordField?.placeholder = "请输入密码"
        self.view.addSubview(self.passwordField!)
        
        self.loginBtn = HDWidget.cornerHalfButton(title: "登陆")
        self.loginBtn?.addTarget(self, action: #selector(loginBtnAction), for: .touchUpInside)
        self.view.addSubview(self.loginBtn!)
    }
    
    func layoutViews() {
        
    }
    
    @objc func loginBtnAction() {
        
    }
}
