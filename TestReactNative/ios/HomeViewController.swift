//
//  HomeViewController.swift
//  TestReactNative
//
//  Created by 路政浩 on 2016/12/17.
//  Copyright © 2016年 RamboLu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  
      public var launchOptions : NSDictionary!
  
      override func viewDidLoad() {
        super.viewDidLoad()
        
      let jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.ios", fallbackResource: nil)
//      let homeView = RCTRootView(bundleURL: jsCodeLocation,
//                                      moduleName: "TestReactNative",
//                                      initialProperties: nil,
//                                      launchOptions: launchOptions as! [AnyHashable : Any]!)
        let homeView = RCTRootView(bundleURL: jsCodeLocation,
                                        moduleName: "TestReactNative",
                                        initialProperties: nil,
                                        launchOptions: nil)
        homeView?.backgroundColor = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1)
        view = homeView
  }
}
