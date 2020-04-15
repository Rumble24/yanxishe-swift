//
//  HDDiscoverHomeGoodsInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeGoodsInfoModel: NSObject {
    
    var goodsId:NSInteger?
    var goodsUrl:String?
    var name:String?
    var url:String?
    var amount:String?
    var amountOld:String?
    var status:NSInteger?
    var numLeft:NSInteger?
    var numDesc:String?
    var goodsBrief:String?
    var communityName:String?
    var pageUrl:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.goodsId <-- "goods_id"
        mapper <<< self.goodsUrl <-- "goods_url"
        mapper <<< self.name <-- "name"
        mapper <<< self.url <-- "url"
        mapper <<< self.amount <-- "amount"
        mapper <<< self.amountOld <-- "amount_old"
        mapper <<< self.status <-- "status"
        mapper <<< self.numLeft <-- "num_left"
        mapper <<< self.numDesc <-- "num_desc"
        mapper <<< self.goodsBrief <-- "goods_brief"
        mapper <<< self.communityName <-- "community_name"
        mapper <<< self.pageUrl <-- "page_url"
    }
}
