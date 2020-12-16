//
//  ViewController.swift
//  AstrologyApp
//
//  Created by 伊藤　直人 on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
        setUI()
    }

    func setUI() {
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        label.backgroundColor = .blue
        self.view.addSubview(label)
        
        let xibView = PublicView()
        xibView.frame = CGRect(x: 150, y: 350, width: 200, height: 80)
        self.view.addSubview(xibView)
        
        let xibView2 = PublicView()
        xibView2.frame = CGRect(x: 150, y: 450, width: 300, height: 120)
        self.view.addSubview(xibView2)
    }
}

