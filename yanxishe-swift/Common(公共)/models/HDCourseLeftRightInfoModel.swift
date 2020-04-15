//
//  HDCourseLeftRightInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDCourseLeftRightInfoModel: NSObject {

    ///课程id
    var courseId:String?
    ///课程名
    var title:String?
    ///标签数组
    var tagList:[String]? {
        didSet {
            tagListModel = []
            for str in tagList ?? [] {
                let model = HDTagListModel()
                model.name = str
                tagListModel?.append(model)
            }
        }
    }

    var tagListModel:[HDTagListModel]?
    ///观看人数图片
    var watchIcon:String?
    ///单个标签
    var tagName:String?
    
    var actionNum:String?
    
    var coverImage:String?
    ///课程评分
    var courseScore:CGFloat?

    var allowPlayTitle:String?

    var teacherName:String?

    var teacherPosition:String?
    ///右上角标记
    var superscript:String?
    ///是否是系列课
    var isSeries:Bool?
    
    var leftTopImage:String?

    var pageUrl:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.courseId <-- "course_id"
        mapper <<< self.title <-- "title"
        mapper <<< self.teacherName <-- "teacher.name"
        mapper <<< self.teacherPosition <-- "teacher.position"
        mapper <<< self.coverImage <-- "cover_image_1x2"
        mapper <<< self.watchIcon <-- "watch_icon"
        mapper <<< self.tagName <-- "tag_name"
        mapper <<< self.tagList <-- "tag_list"
        mapper <<< self.actionNum <-- "action_num"
        mapper <<< self.courseScore <-- "course_score"
        mapper <<< self.allowPlayTitle <-- "allow_play_title"
        mapper <<< self.leftTopImage <-- "left_top_image"
        mapper <<< self.isSeries <-- "is_series"
        mapper <<< self.superscript <-- "superscript"
        mapper <<< self.pageUrl <-- "page_url"
    }
}
