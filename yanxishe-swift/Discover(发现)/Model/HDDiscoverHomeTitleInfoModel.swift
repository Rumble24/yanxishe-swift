//
//  HDDiscoverHomeTitleInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeTitleInfoModel: NSObject {

    var title:String?

    var icon:String?

    var subtitle:String?
    
    var pageUrl:String?
    
    var changeThemeBtnTitle:String?

    var changeThemeBtnPageUrl:String?

    var moreBtnTitle:String?

    var moreBtnPageUrl:String?

    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.title <-- "title"
        mapper <<< self.icon <-- "icon"
        mapper <<< self.subtitle <-- "subtitle"
        mapper <<< self.pageUrl <-- "page_url"

        mapper <<< self.changeThemeBtnTitle <-- "change_theme_btn.title"
        mapper <<< self.changeThemeBtnPageUrl <-- "change_theme_btn.page_url"
        mapper <<< self.moreBtnTitle <-- "more_btn.title"
        mapper <<< self.moreBtnPageUrl <-- "more_btn.page_url"
    }
}
