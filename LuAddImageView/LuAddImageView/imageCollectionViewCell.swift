//
//  imageCollectionViewCell.swift
//  LuAddImageView
//
//  Created by 路政浩 on 2017/10/19.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit

@objc protocol imageCollectionViewCellDelegate: NSObjectProtocol {
    
    @objc optional
    func imageCollectionViewCellDidAddPicture(_ cell: imageCollectionViewCell)
    @objc optional
    func imageCollectionViewCellDidRemovePicture(_ cell: imageCollectionViewCell)
}

class imageCollectionViewCell: UICollectionViewCell {
    
    weak var delegate : imageCollectionViewCellDelegate?
    
    var image: UIImage? {
        didSet {
            /** 如果没有图像，隐藏删除按钮 */
            removeButton.isHidden = (image == nil)
            
            if image == nil {
                addButton.setImage(nil, for: UIControlState())
                addButton.setBackgroundImage(UIImage(named: "加号icon"), for: UIControlState())
                return
            }else{
                addButton.setImage(image, for: UIControlState())
                addButton.setBackgroundImage(nil, for: UIControlState())
            }
        }
    }
    
    // 添加按钮
    fileprivate lazy var addButton : UIButton = {
        var addButton = UIButton()
        addButton.setBackgroundImage(UIImage(named:"加号icon"), for: UIControlState())
        return addButton
    }()
    
    // 删除图片按钮
    fileprivate lazy var removeButton : UIButton = {
        var removeButton = UIButton()
        removeButton.setBackgroundImage(UIImage(named:"删除icon"), for: UIControlState())
        return removeButton
        
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        self.addButton.addTarget(self, action: #selector(self.clickAddPictureButton), for: .touchUpInside)
        self.removeButton.addTarget(self, action: #selector(self.clickRemovePictureButton), for: .touchUpInside)
        self.addButton.imageView?.contentMode = .scaleAspectFill
        self.contentView.addSubview(addButton)
        self.contentView.addSubview(removeButton)
        
        self.addButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
        self.removeButton.snp.makeConstraints { (make) in
            make.right.equalTo(contentView)
            make.top.equalTo(contentView)
        }
    }
}
extension imageCollectionViewCell {
    // 添加图片
    @objc
    fileprivate func clickAddPictureButton() {
        self.delegate?.imageCollectionViewCellDidAddPicture!(self)
    }
    // 删除按钮
    @objc
    fileprivate func clickRemovePictureButton() {
        self.delegate?.imageCollectionViewCellDidRemovePicture!(self)
    }
}
