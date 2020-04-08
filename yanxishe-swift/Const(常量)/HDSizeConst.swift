//
//  HDSizeConst.swift
//  yanxishe-swift
//
//  Created by rumble on 2020/4/4.
//  Copyright © 2020 rumble. All rights reserved.
//

import UIKit

/// 屏幕的宽度
let HDScreenW = UIScreen.main.bounds.width
/// 屏幕的高度
let HDScreenH = UIScreen.main.bounds.height

///
let isFullScreen: Bool = {
    if #available(iOS 11, *) {
          guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
              return false
          }
          
          if unwrapedWindow.safeAreaInsets.left > 0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
              print(unwrapedWindow.safeAreaInsets)
              return true
          }
    }
    return false
}()

let HDNavBarH: CGFloat = {
   return isFullScreen ? 88 : 64
}()
    
let HDTabH: CGFloat = {
   return isFullScreen ? 34 : 0
}()


let HDWRadio = HDScreenW / 375.0

let HDHRadio = HDScreenH / 667.0
