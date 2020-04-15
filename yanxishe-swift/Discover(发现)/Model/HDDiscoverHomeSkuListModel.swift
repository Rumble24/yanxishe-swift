//
//  HDDiscoverHomeSkuListModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeSkuListModel: NSObject {
    
    var skuName:String?

    var skuMode:String?

    var skuImage:String?

    var pageUrl:String?

    var skuDesc:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.skuName <-- "sku_name"
        mapper <<< self.skuMode <-- "sku_mode"
        mapper <<< self.skuImage <-- "sku_image"
        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.skuDesc <-- "sku_desc"
    }
}
