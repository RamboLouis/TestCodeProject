//
//  TopCollectionView.swift
//  LuTopMenuView
//
//  Created by 路政浩 on 2017/10/13.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit

class TopCollectionView: UIView,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var nameArr = ["区域","价格","面积","更多"]
    
    lazy var topAlertView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: SCREEN_SCALE_WIDTH * 120, height: SCREEN_SCALE_HEIGHT * 60)
        flowLayout.sectionInset = UIEdgeInsets(top: SCREEN_SCALE_HEIGHT * 20, left: SCREEN_SCALE_WIDTH * 45, bottom: SCREEN_SCALE_HEIGHT * 20, right: SCREEN_SCALE_WIDTH * 45)
        
        let topAlertView = UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
//        topAlertView.backgroundColor = UIColor.red
        topAlertView.delegate     = self
        topAlertView.dataSource   = self
        topAlertView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        topAlertView.register(TopAlertViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        
        return topAlertView
    }()
    
    var topBackTableView: TopAlertMenuView?
    
    var topDoubleTableView: TopAlertMenuView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setTopUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TopCollectionView {
    func setTopUI() {
        self.addSubview(topAlertView)
        topAlertView.snp.makeConstraints { (make) in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(SCREEN_SCALE_HEIGHT * 100)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! TopAlertViewCell
        cell.cellLabel.text = nameArr[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        debugPrint("点击第\(indexPath.row)个")
        self.topBackTableView?.removeFromSuperview()
        self.topBackTableView = nil
        let height = SCREEN_SCALE_HEIGHT * 100
        switch indexPath.row {
        case 0:
            self.topBackTableView = TopAlertMenuView(frame: CGRect(x: 0, y: height, width: SCREENW, height: SCREENH - 64 - height) , alertType: .singleTableview, indexTextArr: ["2","2"])
            self.topBackTableView?.backgroundColor = UIColor.blue
            self.addSubview(topBackTableView!)
            break
        case 1:
            self.topBackTableView = TopAlertMenuView(frame: CGRect(x: 0, y: height, width: SCREENW, height: SCREENH - 64 - height) , alertType: .singleTableview, indexTextArr: ["2","2"])
            self.topBackTableView?.backgroundColor = UIColor.orange
            self.addSubview(topBackTableView!)
            break
        case 2:
            self.topBackTableView = TopAlertMenuView(frame: CGRect(x: 0, y: height, width: SCREENW, height: SCREENH - 64 - height) , alertType: .doubleTableview, indexTextArr: ["2","2"])
            self.addSubview(topBackTableView!)
            break
        case 3:
            self.topBackTableView = TopAlertMenuView(frame: CGRect(x: 0, y: height, width: SCREENW, height: SCREENH - 64 - height) , alertType: .singleTableview, indexTextArr: ["2","2"])
            self.topBackTableView?.backgroundColor = UIColor.green
            self.addSubview(topBackTableView!)
            break
        default:
            break
        }
    }
}

class TopAlertViewCell: UICollectionViewCell{
    var cellLabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUI(){
        backgroundColor = UIColor.white
        cellLabel.font = UIFont.systemFont(ofSize: 14)
        cellLabel.textColor = UIColor.black
        contentView.addSubview(cellLabel)
        cellLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
}

