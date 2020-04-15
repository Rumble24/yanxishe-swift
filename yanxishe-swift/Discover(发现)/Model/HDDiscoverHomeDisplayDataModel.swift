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
    var courseLeftRightInfo:HDCourseLeftRightInfoModel?
    var courseTopBottomList:[HDCourseLeftRightInfoModel]?
    var courseBespeakInfo:HDDiscoverHomeBespeakInfoModel?
    
    var courseLongInfo:HDDiscoverHomeCourseLongInfoModel?
    var ssliveList:[HDDiscoverHomeSsliveItemModel]?
    var ssliveInfo:HDDiscoverHomeSsliveItemModel?
    var svideoList:[HDDiscoverHomeSvideoItemModel]?
    var goodsInfo:HDDiscoverHomeGoodsInfoModel?
    var articleInfo:HDDiscoverHomeArticleInfoModel?
    var discussTopic:HDDiscoverHomeDiscussTopicModel?
    var categoryList:[HDDiscoverHomeCategoryItemModel]?

    func mapping(mapper: HelpingMapper) {
        mapper <<< self.skuList <-- "sku_list"
        mapper <<< self.inviteInfo <-- "invite_info"
        mapper <<< self.goodsList <-- "goods_list"
        mapper <<< self.imageData <-- "image_data"
        mapper <<< self.titleInfo <-- "title_info"
        mapper <<< self.operateBtn <-- "operate_btn"
        mapper <<< self.courseLeftRightInfo <-- "course_left_right_info"
        mapper <<< self.courseTopBottomList <-- "course_top_bottom_list"
        mapper <<< self.courseBespeakInfo <-- "course_bespeak_info"

        mapper <<< self.courseLongInfo <-- "course_long_info"
        mapper <<< self.ssliveList <-- "sslive_list"
        mapper <<< self.ssliveInfo <-- "sslive_info"
        mapper <<< self.svideoList <-- "svideo_list"
        mapper <<< self.goodsInfo <-- "goods_info"
        mapper <<< self.articleInfo <-- "article_info"
        mapper <<< self.discussTopic <-- "discuss_topic"
        mapper <<< self.categoryList <-- "category_list"

    }
    
}
