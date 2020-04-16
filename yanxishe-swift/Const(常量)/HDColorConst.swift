//
//  HDColorConst.swift
//  yanxishe-swift
//
//  Created by 王景伟 on 2020/4/16.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

func HDRGB(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor
{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}

// 随机色
let HDRandomColor = HDRGB(CGFloat(arc4random_uniform(255)), CGFloat(arc4random_uniform(255)), CGFloat(arc4random_uniform(255)))

let HDColorD7AB70 = HDRGB(0xda, 0xb0, 0x77)

let HDColor999999 = HDRGB(0x99, 0x99, 0x99)

let HDColorTitle = HDRGB(0x2b, 0x2b, 0x2b)
