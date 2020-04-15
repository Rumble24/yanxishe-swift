//
//  HDTagListModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDTagListModel: NSObject {

    var name:String? {
        didSet {
            width = HDCommonMethods.getWidth(str: name ?? "", fontSize: 13)
        }
    }
    
    var width:CGFloat?
}
