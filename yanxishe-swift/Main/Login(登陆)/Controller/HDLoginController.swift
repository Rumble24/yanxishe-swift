//
//  HDLoginController.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import AVFoundation

class HDLoginController: HDBaseViewController {

    var topImage:UIImageView?
    
    var wxLabel:UILabel?
    
    var wxBtn:UIButton?
    
    var loginBtn:UIButton?
    
    var registerBtn:UIButton?
    
    var qqBtn:UIButton?
    
    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createPlayerView()
        
        self.createView()
        
        self.layoutViews()
    }
}


// MARK - 初始化视图
extension HDLoginController {
    
    func createPlayerView() {
        let filePath = Bundle.main.path(forResource: "login.mp4", ofType: nil)
        let sourceMovieURL = NSURL.fileURL(withPath: filePath ?? "")
        let movieAsset = AVURLAsset.init(url: sourceMovieURL)
        let playerItem = AVPlayerItem.init(asset: movieAsset)
        
        self.player = AVPlayer.init(playerItem: playerItem)
        let playerLayer = AVPlayerLayer.init(player: self.player!)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = view.bounds
        self.view.layer.addSublayer(playerLayer)
        
        self.player?.play()
                
        NotificationCenter.default.addObserver(self, selector: #selector(playerToEnd), name: .AVPlayerItemDidPlayToEndTime, object: nil)
    }
    
    func createView() {
        self.topImage = UIImageView.init(image: UIImage.init(named: "login_intro_top"))
        self.view.addSubview(self.topImage!)

        self.wxLabel = UILabel.init()
        self.wxLabel!.text = "微信网页购买的用户，请选择微信登录"
        self.wxLabel!.textColor = HDRGB(0xb4, 0xb4, 0xb4)
        self.wxLabel!.font = HDDefaultFont(13);
        self.wxLabel!.textAlignment = .center;
        self.view.addSubview(self.wxLabel!)

        self.wxBtn = HDWidget.cornerHalfButton(title: "微信登录")
        self.wxBtn!.addTarget(self, action: #selector(wxBtnAction), for: .touchUpInside)
        self.view.addSubview(self.wxBtn!)
        
        self.loginBtn = HDWidget.goldBorderHalfButton(title: "手机号登陆")
        self.loginBtn!.addTarget(self, action: #selector(loginBtnAction), for: .touchUpInside)
        self.view.addSubview(self.loginBtn!)
        
        self.registerBtn = HDWidget.goldBorderHalfButton(title: "注册领取礼包")
        self.registerBtn!.addTarget(self, action: #selector(registerBtnAction), for: .touchUpInside)
        self.view.addSubview(self.registerBtn!)
        
        self.qqBtn = UIButton.init(type: .custom)
        self.qqBtn!.setTitle("QQ登录", for: .normal)
        self.qqBtn!.titleLabel!.font = HDDefaultFont(13);
        self.qqBtn!.addTarget(self, action: #selector(qqBtnAction), for: .touchUpInside)
        self.view.addSubview(self.qqBtn!)
    }
    
    func layoutViews() {
        self.topImage?.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.view);
            make.size.equalTo(CGSize.init(width: 141, height: 156));
            make.centerY.equalTo(self.view).multipliedBy(222/333.5).priority(.high);
            make.bottom.lessThanOrEqualTo(self.wxLabel!.snp.bottom).offset(-30);
        })
        
        self.loginBtn?.snp.makeConstraints({ (make) in
            make.left.equalTo(self.view).offset(40);
            make.height.equalTo(44);
            make.bottom.equalTo(self.view).offset(-70-38);
        })
        
        self.registerBtn?.snp.makeConstraints({ (make) in
            make.left.equalTo(self.loginBtn!.snp.right).offset(12);
            make.centerY.width.height.equalTo(self.loginBtn!);
            make.right.equalTo(self.view).offset(-40);
        })
        
        self.wxBtn?.snp.makeConstraints({ (make) in
            make.left.equalTo(self.view).offset(40);
            make.right.equalTo(self.view).offset(-40);
            make.height.equalTo(44);
            make.bottom.equalTo(self.loginBtn!.snp.top).offset(-15);
        })
        
        self.wxLabel?.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.view);
            make.bottom.equalTo(self.wxBtn!.snp.top).offset(-7);
        })
        
        self.qqBtn?.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-66);
        })
    }
}


// mark - 按钮点击
extension HDLoginController {
    
    @objc func wxBtnAction() {
        
    }
    
    @objc func loginBtnAction() {
        self.navigationController?.pushViewController(HDPhoneLoginController(), animated: true)
    }
    
    @objc func registerBtnAction() {
        
    }
    
    @objc func qqBtnAction() {
        
    }
    
    @objc func playerToEnd() {
        self.player?.seek(to: CMTime.init(value: 0, timescale: 1))
        self.player?.play()
    }
}
