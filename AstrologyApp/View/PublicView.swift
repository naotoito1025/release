//
//  PublicView.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/10.
//

import UIKit

protocol PublicViewDelegate {
    func tappedButton()
}

class PublicView: UIView {
    
    var publicViewDelegate: PublicViewDelegate?

    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
    func loadNib(){
        let view = Bundle.main.loadNibNamed("PublicView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        view.backgroundColor = .darkGray
        self.addSubview(view)
    }
    
    func tappedButton() {
        publicViewDelegate?.tappedButton()
    }
}
