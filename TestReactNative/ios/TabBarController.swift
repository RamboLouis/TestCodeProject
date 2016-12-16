//
//  TabBarController.swift
//  TestReactNative
//
//  Created by 路政浩 on 2016/12/17.
//  Copyright © 2016年 RamboLu. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildControllers()
    }
  
    fileprivate func setupChildControllers(){
        loadChildControllers(HomeViewController(),"icon_home", "首页")
        loadChildControllers(UserViewController(),"icon_me", "个人中心")
    }
    
    
    fileprivate func loadChildControllers(_ childVC: UIViewController,_ imageName: String,_ titleName: String){
        childVC.tabBarItem.image         = UIImage(named:imageName)?.withRenderingMode(.alwaysOriginal)
        childVC.tabBarItem.selectedImage = UIImage(named: "\(imageName)_selected")?.withRenderingMode(.alwaysOriginal)
      
        childVC.title = titleName
      
        let attr = [NSForegroundColorAttributeName:UIColor.colorWithString("#227EEF")]
        childVC.tabBarItem.setTitleTextAttributes(attr, for: .selected)
        
        addChildViewController(NavController(rootViewController: childVC))
    }
    
}
