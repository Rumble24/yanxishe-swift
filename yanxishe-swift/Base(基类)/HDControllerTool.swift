//
//  HDControllerTool.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/16.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDControllerTool: NSObject {

    static var hideNavArr:[String]?
    
    class func needHideNav(_ vc:HDBaseViewController) -> Bool {
        
        if (hideNavArr == nil) {
            let path = Bundle.main.path(forResource: "HDHideNavigationVC.json", ofType: nil)
            do {
                let data = try Data(contentsOf: NSURL.fileURL(withPath: path ?? ""))
                    let jsonData:Any = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
                hideNavArr = jsonData as? [String]
            } catch _ as Error? {
            }
        }

        for str in hideNavArr ?? [] {
            if str == String(describing: vc.classForCoder) {
                return true
            }
        }

        return false
    }
    
}
