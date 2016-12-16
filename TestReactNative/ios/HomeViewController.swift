//
//  HomeViewController.swift
//  TestReactNative
//
//  Created by 路政浩 on 2016/12/17.
//  Copyright © 2016年 Facebook. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  
      public var launchOptions : NSDictionary!
  
      override func viewDidLoad() {
        super.viewDidLoad()
        
      let jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.ios", fallbackResource: nil)
      let homeView = RCTRootView.init(bundleURL: jsCodeLocation,
                                      moduleName: "TestReactNative",
                                      initialProperties: nil,
                                      launchOptions: launchOptions as! [AnyHashable : Any]!)
      
        homeView?.backgroundColor = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1)
        view = homeView
  }
}
