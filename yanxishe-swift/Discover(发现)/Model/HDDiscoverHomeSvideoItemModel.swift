//
//  HDDiscoverHomeSvideoItemModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeSvideoItemModel: NSObject {
    
    var videoId:String?
    var courseId:String?
    var title:String?
    var time:String?
    var teacherName:String?
    var teacherPosition:String?
    var videoImage:String?
    var gifUrl:String?
    var pageUrl:String?
    
    func mapping(mapper: HelpingMapper) {
       mapper <<< self.videoId <-- "video_id"
       mapper <<< self.title <-- "title"
       mapper <<< self.time <-- "time"
       mapper <<< self.videoImage <-- "video_image"
       mapper <<< self.courseId <-- "course_id"
       mapper <<< self.teacherName <-- "teacher_name"
       mapper <<< self.teacherPosition <-- "teacher_position"
       mapper <<< self.gifUrl <-- "gif_url"
       mapper <<< self.pageUrl <-- "page_url"
    }
}
