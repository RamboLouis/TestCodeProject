//
//  TopDoubleTableView.swift
//  LuTopMenuView
//
//  Created by 路政浩 on 2017/10/16.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit

class TopDoubleTableView: UIView {
    
    var leftBtn  : UIButton?
    
    var rightBtn : UIButton?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension TopDoubleTableView {
    func setUI() {
        setTopBtn()
    }
    
    func setTopBtn() {
        leftBtn = UIButton()
        leftBtn?.setTitle("按钮1", for: .normal)
        leftBtn?.backgroundColor = UIColor.blue
        leftBtn?.setTitleColor(UIColor.black, for: .normal)
        leftBtn!.addTarget(self, action: #selector(TopDoubleTableView.onClickLeftBtn), for: .touchUpInside)
        self.addSubview(leftBtn!)
        leftBtn?.snp.makeConstraints({ (make) in
            make.left.top.equalTo(self)
            make.height.equalTo(SCREEN_SCALE_HEIGHT * 100)
            make.width.equalTo(SCREENW / 2)
        })
        
        rightBtn = UIButton()
        rightBtn?.setTitle("按钮2", for: .normal)
        rightBtn?.backgroundColor = UIColor.white
        rightBtn?.setTitleColor(UIColor.black, for: .normal)
        rightBtn!.addTarget(self, action: #selector(TopDoubleTableView.onClickRightBtn), for: .touchUpInside)
        self.addSubview(rightBtn!)
        rightBtn?.snp.makeConstraints({ (make) in
            make.right.top.equalTo(self)
            make.height.equalTo(SCREEN_SCALE_HEIGHT * 100)
            make.width.equalTo(SCREENW / 2)
        })
    }
}
extension TopDoubleTableView {
    @objc func onClickLeftBtn() {
        debugPrint("点击左侧按钮")
    }
    
    @objc func onClickRightBtn() {
        debugPrint("点击右侧按钮")
    }
}
