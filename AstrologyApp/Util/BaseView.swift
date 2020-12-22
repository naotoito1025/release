//
//  BaseView.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/22.
//

import UIKit

class BaseView: UIView {
    
    public override init(frame: CGRect) {
        Logger.call()
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        Logger.call()
        super.init(coder: coder)
    }
}
