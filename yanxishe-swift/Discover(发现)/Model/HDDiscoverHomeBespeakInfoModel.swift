//
//  HDDiscoverHomeBespeakInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeBespeakInfoModel: NSObject {

    var courseId:String?
    
    var title:String?

    var teacherName:String?

    var teacherPosition:String?
    
    var displayTime:String?

    var skuCircleImage:String?

    var hasBespeak:NSInteger?

    var pageUrl:String?

    var tagName:String?

    var multiTitles:[HDCourseMultiTitlesModel]?

    var isFirst:Bool?
    
    var isLast:Bool?

    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.title <-- "title"
        mapper <<< self.courseId <-- "course_id"
        mapper <<< self.teacherName <-- ["teacher.name","teacher_name"]
        mapper <<< self.teacherPosition <-- ["teacher.position","teacher_position"]
        mapper <<< self.displayTime <-- "display_time"
        mapper <<< self.skuCircleImage <-- "sku_circle_image"
        mapper <<< self.hasBespeak <-- "has_bespeak"

        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.multiTitles <-- "multi_titles"
        mapper <<< self.tagName <-- "tag_name"
    }
}
