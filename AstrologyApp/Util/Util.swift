//
//  Util.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/15.
//

import UIKit

/// Utilクラス
class Util {
    
    class func getWidth() {
        
    }
    
    /// RGBカラーの変換
    /// - Parameter rgbValue: 0x[色コード]の値（例:「0xFFFFFF」　※白の場合）
    class func UIColorFromRGB(rgbValue : UInt) -> UIColor {
        Logger.call()
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
