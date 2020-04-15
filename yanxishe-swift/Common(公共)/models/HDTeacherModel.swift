//
//  HDTeacherModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDTeacherModel: NSObject {
    
    /** 显示用的讲师名字 */
    var teacherName:String?
    /** 老师头像链接 */
    var teacherHeadImage:String?
    /** 老师职位信息 */
    var teacherPosition:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.teacherName <-- "teacher_name"
        mapper <<< self.teacherHeadImage <-- "teacher_head_image"
        mapper <<< self.teacherPosition <-- "teacher_position"
    }
}
