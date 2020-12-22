//
//  Util.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/15.
//

import UIKit

/// Utilクラス
class Util {
    
    /// ステータスバーの高さ取得
    class func getStatusBarHeight() -> CGFloat {
        Logger.call()
        var statusBarHeight: CGFloat = 0
            if #available(iOS 13.0, *) {
                let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
                statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            } else {
                statusBarHeight = UIApplication.shared.statusBarFrame.height
            }
            return statusBarHeight
    }
    
    /// ナビゲーションバーの高さ取得
    class func getNavigationBarHeight(vc: UIViewController) -> CGFloat {
        Logger.call()
        return vc.navigationController?.navigationBar.frame.size.height ?? 0
    }
    
    /// ヘッダーの高さ取得
    class func getHeaderHeight(vc: UIViewController) -> CGFloat {
        Logger.call()
        return getStatusBarHeight() + getNavigationBarHeight(vc: vc)
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
