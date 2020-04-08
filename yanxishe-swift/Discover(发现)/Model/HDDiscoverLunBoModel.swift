//
//  HDDiscoverLunBoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/8.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverLunBoItem: HandyJSON {
    
    var coverImage:String?
    
    var pageUrl:String?
    
    required init() {}
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.coverImage <-- "cover_image"
        mapper <<< self.pageUrl <-- "page_url"
    }

}

class HDDiscoverLunBoModel: HDBaseModel {

    var lunboList:[HDDiscoverLunBoItem]?
    
    /// 映射
    override func mapping(mapper: HelpingMapper) {
        super.mapping(mapper: mapper)
        mapper <<< self.lunboList <-- "carousel_list"
    }
}
