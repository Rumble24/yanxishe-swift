//
//  HDDiscoverHomeGoodsItemModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeGoodsItemModel: NSObject {

    var goodsName:String?

    var yanzhiNum:String?

    var pageUrl:String?
    
    var goodsId:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.goodsName <-- "goods_name"
        mapper <<< self.yanzhiNum <-- "yanzhi_num"
        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.goodsId <-- "goods_id"
    }
}
