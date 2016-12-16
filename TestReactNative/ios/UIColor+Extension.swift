//
//  UIColor+Extension.swift
//  TestReactNative
//
//  Created by 路政浩 on 2016/12/17.
//  Copyright © 2016年 RamboLu. All rights reserved.
//

import UIKit

extension UIColor{
  
  
  /**
   将16进制数字转换成颜色
   
   - parameter colorString: 16进制字符串
   
   - returns: 返回相对应的颜色
   */
  class func colorWithString(_ colorString:String) -> UIColor{
    
    var cString:String = colorString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
      cString = (cString as NSString).substring(from: 1)
    }
    
    if (cString.characters.count != 6) {
      return UIColor.gray
    }
    
    //截取传进来的字符串 To(截取到哪一位) From(从哪一位开始截取)
    let rString = (cString as NSString).substring(to: 2)
    let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
    let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
    
    //创建颜色的值,并将十六进制转换成十进制
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    Scanner(string: rString).scanHexInt32(&r)
    Scanner(string: gString).scanHexInt32(&g)
    Scanner(string: bString).scanHexInt32(&b)
    
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
  }
  
  
}
