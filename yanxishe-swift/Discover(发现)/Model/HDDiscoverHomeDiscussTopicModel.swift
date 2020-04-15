//
//  HDDiscoverHomeDiscussTopicModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeDiscussTopicRelatedInfoModel: NSObject {
    var relatedTitle:String?
    var objTitle:String?
    var objSubTitle:String?
    var belowWords:String?
    var pageUrl:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.relatedTitle <-- "related_title"
        mapper <<< self.objTitle <-- "obj_title"
        mapper <<< self.objSubTitle <-- "obj_sub_title"
        mapper <<< self.belowWords <-- "below_words"
        mapper <<< self.pageUrl <-- "page_url"
    }
}


class HDDiscoverHomeDiscussTopicModel: NSObject {
    
    /// 主题名称
    var name:String?
    /// 主题当前状态，0-预约中；1-进行中；2-结束
    var state:NSInteger?
    /// 状态icon链接
    var stateIconUrl:String?
    /// 状态icon比例
    var stateIconScale:CGFloat?
    /// 按钮文案
    var buttonName:String?
    /// 开放时间描述文案
    var openTimeDesc:String?
    /// 预计时间
    var duration:String?
    /// 预约/讨论人数描述文案
    var actorNumDesc:String?
    /// 参与人的用户头像列表
    var actorHeadImgs:[String]?
    /// 跳转路由
    var pageUrl:String?
    /// 关联课程
    var relatedInfo:HDDiscoverHomeDiscussTopicRelatedInfoModel?
    /// 等级名称2.19.0
    var levelStr:String?
    /// 文字前面的标签，优先级高于stateIconUrl 2.20.0
    var label:String?
    /// 背景图片链接2.20.0
    var bgImgUrl:String?
    /// 自定义文案
    var custom:String?
    /// pk的图片
    var pkIcon:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.stateIconUrl <-- "state_icon_url"
        mapper <<< self.stateIconScale <-- "state_icon_scale"
        mapper <<< self.buttonName <-- "button_name"
        mapper <<< self.openTimeDesc <-- "open_time_desc"
        mapper <<< self.actorNumDesc <-- "actor_num_desc"
        mapper <<< self.actorHeadImgs <-- "actor_head_imgs"
        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.relatedInfo <-- "related_info"
        mapper <<< self.levelStr <-- "level_str"
        mapper <<< self.bgImgUrl <-- "bg_img_url"
        mapper <<< self.pkIcon <-- "pk_icon"
    }
}
