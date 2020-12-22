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
        nav.navigationBar.barTintColor = Util.UIColorFromRGB(rgbValue : 0x231815)
        nav.navigationBar.tintColor = Util.UIColorFromRGB(rgbValue : 0xFFFFFF)
        nav.navigationBar.titleTextAttributes = [.foregroundColor: Util.UIColorFromRGB(rgbValue: 0xFFFFFF)]
        nav.navigationBar.isTranslucent = false
        return nav
    }
    
    /// ビューをセーフエリアのサイズに設定 ※viewDidLayoutSubviews以降で使用
    /// - Parameters:
    ///   - vc: vc description
    ///   - view: view description
    class func setViewSize(vc: UIViewController, view: UIView) {
        Logger.call()
        guard let root = UIApplication.shared.keyWindow?.rootViewController else {
            return
        }
        let topSafeArea = Util.getHeaderHeight(vc: vc)
        let bottomSafeArea: CGFloat
        
        if #available(iOS 11.0, *) {
            bottomSafeArea = root.view.safeAreaInsets.bottom
        } else {
            bottomSafeArea = root.bottomLayoutGuide.length
        }
        view.frame = CGRect(x: 0, y: 0, width: Const.WIDTH, height: Const.HEIGHT - topSafeArea - bottomSafeArea)
    }
    
    /// 点滅アニメーション
    /// - Parameters:
    ///   - duration: アニメーションの間隔
    ///   - deray: アニメーション開始までの秒数
    ///   - target: 点滅させるオブジェクト
    class func viewAnimation<T: UIView>(duration: Double, deray: Double, target: T) {
        Logger.call()
        UIView.animate(withDuration: duration, delay: deray, options: [.allowUserInteraction, .repeat, .autoreverse], animations: {
            target.alpha = 0.1
        }, completion: nil)
    }
    
    class func pracement<T: UIView>(view: UIView, target: T, position: Position) {
        Logger.call()
        let posY = (view.frame.height - target.frame.height) / 2
        switch position {
        case .right:
            target.frame.origin = CGPoint(x: Const.MARGIN, y: posY)
        case .center:
            target.frame.origin = CGPoint(x: (view.frame.width - target.frame.width) / 2, y: posY)
            print(target.frame.origin.x)
            print(target.frame.origin.y)
        case .left:
            target.frame.origin = CGPoint(x: (view.frame.width - target.frame.width) - Const.MARGIN, y: posY)
        }
    }
}

public enum Position {
    case right
    case center
    case left
}
