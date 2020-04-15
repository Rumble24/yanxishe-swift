//
//  HDLoginController.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDLoginController: HDBaseViewController {

    var topImage:UIImageView?
    
    var wxLabel:UILabel?
    
    var wxBtn:UIButton?
    
    var loginBtn:UIButton?
    
    var registerBtn:UIButton?
    
    var qqBtn:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white

        self.createView()
    }
    
    func createView() {
        self.topImage = UIImageView.init(image: UIImage.init(named: "login_intro_top"))
        self.topImage?.backgroundColor = UIColor.red
        self.view.addSubview(self.topImage!)
        self.topImage?.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.view);
            make.size.equalTo(CGSize.init(width: 141, height: 156));
            make.centerY.equalTo(self.view).multipliedBy(222/333.5).priority(.high);
            //make.bottom.lessThanOrEqualTo(self.wxLabel!.snp.bottom).offset(-30);
        })
    }
    
}
