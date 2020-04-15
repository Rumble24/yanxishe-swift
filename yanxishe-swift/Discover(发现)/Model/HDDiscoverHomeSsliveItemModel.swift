//
//  HDDiscoverHomeSsliveItemModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeSsliveItemModel: NSObject {
    
    ///直播id
    var ssliveId:NSInteger?
    ///直播标题
    var title:String?
    ///直播封面
    var coverImage:String?
    ///主播名字
    var anchorName:String?
    ///主播身份
    var anchorPosition:String?
    ///热度
    var hot:String?
    ///直播状态 1直播中 2回放 3直播结束 5预约
    var liveState:NSInteger?
    ///直播状态名称
    var liveStateStr:String?
    ///app跳转url
    var pageUrl:String?
    ///金额类型，1人民币，2研值
    var payType:NSInteger?
    ///金额文案
    var payText:String?
    ///横图
    var enrollHeadImage:String?
    ///开始时间
    var startTime:String?
    ///左上角图片
    var liveStateIcon:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.title <-- "title"
        mapper <<< self.ssliveId <-- "sslive_id"
        mapper <<< self.title <-- "title"
        mapper <<< self.coverImage <-- "cover_image"
        mapper <<< self.anchorName <-- "anchor_name"
        mapper <<< self.anchorPosition <-- "anchor_position"
        mapper <<< self.hot <-- "hot"
        mapper <<< self.liveState <-- "live_state"
        mapper <<< self.liveStateStr <-- "live_state_str"
        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.payType <-- "pay_type"
        mapper <<< self.payText <-- "pay_text"
        mapper <<< self.enrollHeadImage <-- "enroll_head_image"
        mapper <<< self.startTime <-- "start_time"
        mapper <<< self.liveStateIcon <-- "live_state_icon"
    }
}
