//
//  TopAlertMenuView.swift
//  LuTopMenuView
//
//  Created by 路政浩 on 2017/10/13.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit

enum showAlertType : Int {
    case singleTableview
    case doubleTableview
}

typealias IndexPathNumBlock = (_ IndexPathNum:Int?)->Void

class TopAlertMenuView: UIView {
    
    var indexPathNumBlock      : IndexPathNumBlock?
    
    var alertType              : showAlertType?
    
    var backView               : UIView?
    
    var doubleTableViewTopView : TopDoubleTableView?
    
    var indexText          = [String]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init<T>(frame: CGRect, alertType: showAlertType,indexTextArr:[T]) {
        self.init(frame: frame)
        showTopTableView(alertType: alertType, indexTextArr: indexTextArr)
    }
    
    /// 显示列表
    ///
    /// - Parameters:
    ///   - alertType: 显示列表类型
    ///   - indexTextArr: 显示数组
    ///   - block: 回调点击函数
    func showTopTableView<T>(alertType: showAlertType,indexTextArr:[T],bottomAction block:((_ IndexPathNum:Int?)->Void)? = nil){
        showTopBaseTableView(alertType: alertType,textArr:indexTextArr)
        indexPathNumBlock = block
    }
    
    /// 显示列表基类
    ///
    /// - Parameters:
    ///   - alertType: 显示类别
    ///   - textArr: 显示数组T
    func showTopBaseTableView<T>(alertType:showAlertType,textArr:[T]?){
        switch alertType {
        case .singleTableview:
            debugPrint("弹出单列表视图")
            setSingleTableview()
            break
        case .doubleTableview:
            debugPrint("弹出双列表视图")
            setDoubleTableview()
            break
        }
    }
    
    fileprivate func dismissAlert(){
    }
    
    deinit {
        debugPrint("销毁:\(self.classForCoder)控制器")
    }
}

extension TopAlertMenuView {
    fileprivate func showAnimation(_ view:UIView){
        UIView.animate(withDuration: 0.2, animations: {
            var frame : CGRect = view.frame
            frame.origin.y = 0
            view.frame = frame
        })
    }
    
    fileprivate func hideAnimation(_ view:UIView){
        UIView.animate(withDuration: 0.2, animations: {
            var frame : CGRect = view.frame
            frame.origin.y = -view.bounds.size.height
            view.frame = frame
        }, completion: { (finished) in
            self.dismissAlert()
        })
    }
}
extension TopAlertMenuView {
    func setSingleTableview() {
        //backgroundColor = .blue
    }
    
    func setDoubleTableview() {
        backgroundColor = .red
        
        doubleTableViewTopView = TopDoubleTableView()
        doubleTableViewTopView?.backgroundColor = UIColor.green
//        doubleTableViewTopView?.leftBtn?.addTarget(self, action: #selector(TopAlertMenuView.onClickLeftBtn), for: .touchUpInside)
//        doubleTableViewTopView?.rightBtn?.addTarget(self, action: #selector(TopAlertMenuView.onClickRightBtn), for: .touchUpInside)
        self.addSubview(doubleTableViewTopView!)
        doubleTableViewTopView?.snp.makeConstraints({ (make) in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(SCREEN_SCALE_HEIGHT * 500)
        })
    }
    
    @objc func onClickLeftBtn() {
        debugPrint("点击左侧按钮")
    }
    
    @objc func onClickRightBtn() {
        debugPrint("点击右侧按钮")
    }
}
