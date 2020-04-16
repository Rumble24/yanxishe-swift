//
//  HDCommonMethods.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/15.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

class HDCommonMethods: NSObject {

    class func getWidth(str:String,fontSize:CGFloat) -> CGFloat
    {
        let font = UIFont.systemFont(ofSize: fontSize)
        let rect = NSString(string: str).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(rect.width)
    }


    class func getHeight(str:String,width:CGFloat,fontSize:CGFloat) -> CGFloat
    {
        let font = UIFont.systemFont(ofSize: fontSize)
        let rect = NSString(string: str).boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(rect.width)
    }
}


