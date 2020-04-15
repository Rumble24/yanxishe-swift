//
//  HDDiscoverHomeItemModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

enum HDMainDisplayType:Int {
    ///1标题样式
    case HDMainDisplayTypeTitle = 1
    ///2邀请好友
    case HDMainDisplayTypeInvite = 2
    ///3研值商城
    case HDMainDisplayTypeYanzhiMall = 3
    ///4换一批
    case HDMainDisplayTypeChange = 4
    ///5更多
    case HDMainDisplayTypeMore = 5
    ///6长图课程
    case HDMainDisplayTypeCourseLong = 6
    ///7预告课程
    case HDMainDisplayTypeCourseBespeak = 7
    ///8通知上下轮播
    case HDMainDisplayTypeNotice = 8
    ///9学员直播上图下文
    case HDMainDisplayTypeSsliveTopBottom = 9
    ///10学员直播报名
    case HDMainDisplayTypeSsliveEnroll = 10
    ///11纯长图
    case HDMainDisplayTypeImage = 11
    ///12知识点上图下文
    case HDMainDisplayTypeShorVideoTopBottom = 12
    ///13课程上图下文
    case HDMainDisplayTypeCourseTopBottom = 13
    ///14课程左图右文，上下都有间距
    case HDMainDisplayTypeCourseLeftRightSpace = 14
    ///15研值商品左图右文，上下都有间距
    case HDMainDisplayTypeYanzhiGoodsLeftRightSpace = 15
    ///16文章左图右问，上下都有间距
    case HDMainDisplayTypeArticleLeftRightSpace = 16
    ///17课程左图右文，孤岛
    case HDMainDisplayTypeCourseLeftRightIslet = 17
    ///18纯长图，孤岛
    case HDMainDisplayTypeLongImageIslet = 18
    ///19sku列表
    case HDMainDisplayTypeSkuListIslet = 19
    ///20多人讨论
    case HDMainDisplayTypeDiscussTopic = 20
    ///21课程分类
    case HDMainDisplayTypeSkuSort = 21
}

class HDDiscoverHomeItemModel: NSObject {
    ///用于统计
    var cardId:String?
    ///contentNo数组
    var contentNos:[String]?
    ///统计数据
    var statInfo:[String:String]?
    
    var displayType:HDMainDisplayType?
    
    var displayData:HDDiscoverHomeDisplayDataModel?
    
    var isFirstItem:Bool?
    
    var isLastItem:Bool?

    func mapping(mapper: HelpingMapper) {
        mapper <<< self.cardId <-- "card_id"
        mapper <<< self.contentNos <-- "content_nos"
        mapper <<< self.displayType <-- "display_type"
        mapper <<< self.displayData <-- "display_data"
        mapper <<< self.isFirstItem <-- "ui_data.is_first_item"
        mapper <<< self.isLastItem <-- "ui_data.is_last_item"
    }
}
