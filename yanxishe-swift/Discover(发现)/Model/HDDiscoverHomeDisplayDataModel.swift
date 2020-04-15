//
//  HDDiscoverHomeDisplayDataModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeDisplayDataModel: NSObject {
    
    var skuList:[HDDiscoverHomeSkuListModel]?
    var inviteInfo:HDDiscoverHomeInviteInfoModel?
    var goodsList:[HDDiscoverHomeGoodsItemModel]?
    var imageData:HDDiscoverHomeImageDataModel?
    var titleInfo:HDDiscoverHomeTitleInfoModel?
    var operateBtn:HDDiscoverHomeTitleInfoModel?

    func mapping(mapper: HelpingMapper) {
        mapper <<< self.skuList <-- "sku_list"
        mapper <<< self.inviteInfo <-- "invite_info"
        mapper <<< self.goodsList <-- "goods_list"
        mapper <<< self.imageData <-- "image_data"
        mapper <<< self.titleInfo <-- "title_info"
        mapper <<< self.operateBtn <-- "operate_btn"

    }
    
}
