//
//  HDDiscoverHomeInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/8.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeInfoModel: HDBaseModel {

    var searchKeyword:String?
    
    var requestId:String?
    
    var searchRequestId:String?
    
    var searchKeywordList:[String]?
    
    var displayData:HDDiscoverHomeItemModel?
    
    override func mapping(mapper: HelpingMapper) {
        super.mapping(mapper: mapper)
        mapper <<< self.searchKeyword <-- "data.search_keyword"
        mapper <<< self.requestId <-- "data.request_id"
        mapper <<< self.searchRequestId <-- "data.search_request_id"
        mapper <<< self.searchKeywordList <-- "data.search_keyword_list"
        mapper <<< self.displayData <-- "data.display_data"
    }
}
