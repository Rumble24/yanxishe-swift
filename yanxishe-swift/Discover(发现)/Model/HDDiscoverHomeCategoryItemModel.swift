//
//  HDDiscoverHomeCategoryItemModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeCategoryItemModel: NSObject {

    var name:String?
    
    var iconUrl:String?
    
    var pageUrl:String?

    func mapping(mapper: HelpingMapper) {
        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.iconUrl <-- "icon_url"
    }
}
