//
//  NavController.swift
//  TestReactNative
//
//  Created by 路政浩 on 2016/12/17.
//  Copyright © 2016年 RamboLu. All rights reserved.
//

import UIKit

class NavController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor        = UIColor.white
        navigationBar.tintColor     = UIColor.white
        navigationBar.barTintColor  = UIColor.colorWithString("#227EEF")
        /** 取消高斯玻璃效果*/
        navigationBar.isTranslucent = false
        /** 设置标题字体大小和颜色*/
        navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFont(ofSize: 18),
                                             NSForegroundColorAttributeName:UIColor.white]
      
    }
  
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
      
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }
  
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
  
}

