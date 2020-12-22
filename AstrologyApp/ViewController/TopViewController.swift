//
//  TopViewController.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/15.
//

import UIKit

/// トップ画面
class TopViewController: UIViewController {
    
    /// スタートボタン
    let startBtn = UIButton()
    /// ベースビュー
    let baseView = BaseView()
    
    /// 初期処理
    override func viewDidLoad() {
        Logger.call()
        super.viewDidLoad()
        setUI()
        ViewUtil.viewAnimation(duration: 1.5, deray: 0.0, target: self.startBtn)
    }
    
    /// 初期処理
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ViewUtil.setViewSize(vc: self, view: baseView)
    }
    
    // UI設定
    func setUI() {
        Logger.call()
        // 背景の設定
        let backImage = UIImageView()
        backImage.image = UIImage(named: Const.STARRY_SKY)
        backImage.frame = CGRect(x: 0, y: 0, width: Const.WIDTH, height: Const.HEIGHT - Util.getHeaderHeight(vc: self))
        baseView.addSubview(backImage)
        
        // スタートボタンの設定
        startBtn.setTitle("START", for: .normal)
        startBtn.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        startBtn.tintColor = Util.UIColorFromRGB(rgbValue: 0x000000)
        startBtn.sizeToFit()
        startBtn.frame.origin = CGPoint(x: (Const.WIDTH - startBtn.frame.width) / 2, y: (Const.HEIGHT - startBtn.frame.height) / 2 - Util.getHeaderHeight(vc: self))
        startBtn.addTarget(self, action: #selector(tappedBtn), for: .touchUpInside)
        baseView.addSubview(startBtn)
        self.view.addSubview(baseView)
    }
    // MARK: - セレクター
    @objc func tappedBtn() {
        Logger.call()
        print("押された")
        if DataSaveUtil.getUserName() == "" {
            // ログイン画面に遷移
        } else {
            // ユーザーページに遷移
        }
    }    
}
