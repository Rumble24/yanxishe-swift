//
//  HDDiscoverHomeImageDataModel.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit
import HandyJSON

class HDDiscoverHomeImageDataModel: NSObject {

    var imageScale:CGFloat?
    
    var imageUrl:String?

    var pageUrl:String?

    func mapping(mapper: HelpingMapper) {
        mapper <<< self.imageScale <-- "image_scale"
        mapper <<< self.imageUrl <-- "image_url"
        mapper <<< self.pageUrl <-- "page_url"
    }
}
