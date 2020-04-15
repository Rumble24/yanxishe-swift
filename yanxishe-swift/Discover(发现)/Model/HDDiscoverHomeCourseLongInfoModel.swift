//
//  HDDiscoverHomeCourseLongInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeCourseLongInfoModel: NSObject {
    
    var title:String?

    var teacherName:String?

    var teacherPosition:String?
    
    var pageUrl:String?
    
    var stateStyle:NSInteger?

    var stateDesc:String?

    var coverImage:String?

    var skuShadowImage:String?

    var silent1x2Ratio:CGFloat?

    var multiTitles:[HDCourseMultiTitlesModel]?

    var tagName:String?

    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.title <-- "title"
        mapper <<< self.teacherName <-- ["teacher.name","teacher_name"]
        mapper <<< self.teacherPosition <-- ["teacher.position","teacher_position"]
        mapper <<< self.pageUrl <-- "page_url"
        mapper <<< self.stateStyle <-- "state_style"
        mapper <<< self.stateDesc <-- "state_desc"
        mapper <<< self.coverImage <-- "cover_image_v2"
        mapper <<< self.skuShadowImage <-- "sku_shadow_image"
        mapper <<< self.silent1x2Ratio <-- "silent1x2_ratio"
        mapper <<< self.multiTitles <-- "multi_titles"
        mapper <<< self.tagName <-- "tag_name"
    }
}
