//
//  ViewController.swift
//  LuTopMenuView
//
//  Created by 路政浩 on 2017/10/13.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit
let SCREENW                     = UIScreen.main.bounds.width
let SCREENH                     = UIScreen.main.bounds.height

let SCREEN_SCALE_WIDTH          = SCREENW / 750.0
let SCREEN_SCALE_HEIGHT         = SCREENH / 1334.0
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickTopMenuBtn(_ sender: UIButton) {
        let topMenuView = TopMenuViewController()
        self.navigationController?.pushViewController(topMenuView, animated: true)
    }
}

