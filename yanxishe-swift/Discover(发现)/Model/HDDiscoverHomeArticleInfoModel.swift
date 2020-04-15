//
//  HDDiscoverHomeArticleInfoModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeArticleInfoModel: NSObject {
    
    var articleId:String?
    var coverImage:String?
    var title:String?
    var pageUrl:String?
    
    func mapping(mapper: HelpingMapper) {
        mapper <<< self.articleId <-- "article_id"
        mapper <<< self.coverImage <-- "cover_image"
        mapper <<< self.title <-- "title"
        mapper <<< self.pageUrl <-- "page_url"
    }
}
