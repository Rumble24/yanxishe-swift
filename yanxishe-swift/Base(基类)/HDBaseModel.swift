//
//  HDBaseModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/8.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDBaseModel: HandyJSON {
    
    var errorNumber:Int64?
    
    var errorMsg:String?
    
    var interval:Int64?
    
    required init() {}
    
    /// 映射
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.errorNumber <-- "error_no"
        mapper <<< self.errorMsg <-- "error_msg"
        mapper <<< self.interval <-- "data.interval"
    }
}
