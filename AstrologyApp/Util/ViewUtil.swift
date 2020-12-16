//
//  ViewUtil.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/15.
//

import UIKit

/// ViewUtilクラス
class ViewUtil {
    
    /// ナビゲーションコントローラーの設定
    /// - Parameter vc: vc description
    /// - Returns: NavigationController
    class func setNavigationController(vc: UIViewController) -> UINavigationController {
        Logger.call()
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationBar.barTintColor = Util.UIColorFromRGB(rgbValue : 0x00FF00)
        nav.navigationBar.tintColor = Util.UIColorFromRGB(rgbValue : 0xFFFFFF)
        nav.navigationBar.titleTextAttributes = [.foregroundColor: Util.UIColorFromRGB(rgbValue: 0xFFFFFF)]
        nav.navigationBar.isTranslucent = false
        return nav
    }
}
