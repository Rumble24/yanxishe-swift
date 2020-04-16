//
//  HDWidget.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/16.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDWidget: NSObject {
    
    // 背景颜色是金色的半圆按钮。白色的文字
    class func cornerHalfButton(title:String) -> UIButton
    {
        let button:UIButton = UIButton.init(type: .custom)
        button.setTitle(title, for: .normal)
        button.titleLabel!.font = HDDefaultFont(16);
        button.h = 44;
        button.layer.cornerRadius = 22;
        button.layer.masksToBounds = true;
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = HDColorD7AB70;        
        return button
    }

    // 金色边框的半圆按钮。金色的文字
    class func goldBorderHalfButton(title:String) -> UIButton
    {
        let button:UIButton = UIButton.init(type: .custom)
        button.setTitle(title, for: .normal)
        button.titleLabel!.font = HDDefaultFont(16);
        button.h = 44;
        button.layer.cornerRadius = 22;
        button.layer.masksToBounds = true;
        button.setTitleColor(HDColorD7AB70, for: .normal)
        button.backgroundColor = .clear;
        button.layer.borderColor = HDColorD7AB70.cgColor;
        button.layer.borderWidth = 1;
        return button
    }
}
