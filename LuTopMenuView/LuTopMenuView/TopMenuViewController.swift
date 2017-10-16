//
//  TopMenuViewController.swift
//  LuTopMenuView
//
//  Created by 路政浩 on 2017/10/13.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit
import SnapKit

class TopMenuViewController: UIViewController {
    
    var topView : TopCollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.title = "顶部菜单"
        setTopUI()
    }
}
extension TopMenuViewController {
    func setTopUI() {
        topView = TopCollectionView()
        topView?.frame = CGRect(x: 0, y: 64, width: SCREENW, height: SCREEN_SCALE_HEIGHT * 100)
        self.view.addSubview(topView!)
    }
}

