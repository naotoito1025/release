//
//  TopViewController.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/15.
//

import UIKit

/// トップ画面
class TopViewController: UIViewController {
    
    // 初期処理
    override func viewDidLoad() {
        Logger.call()
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setUI()
    }
    
    // UI設定
    func setUI() {
        Logger.call()
        let backImage = UIImageView()
        backImage.image = UIImage(named: Const.STARRY_SKY)
        backImage.frame = self.view.bounds
        self.view.addSubview(backImage)
    }
}
