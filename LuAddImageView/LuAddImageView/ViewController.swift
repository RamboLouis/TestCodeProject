//
//  ViewController.swift
//  LuAddImageView
//
//  Created by 路政浩 on 2017/10/19.
//  Copyright © 2017年 路政浩. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private var imageCollectionView : UICollectionView?

    private lazy var images : [UIImage] = []
    
    private var selectedIndex = 0
    
    // 最大图片数
    private let picturesMaxCount = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    
    func setUI() {
        self.view.backgroundColor = UIColor.white
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 70, height: 70)
        layout.sectionInset = UIEdgeInsetsMake(15, 15, 15, 0)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        self.imageCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        self.imageCollectionView?.backgroundColor = UIColor.white
        self.imageCollectionView?.delegate = self
        self.imageCollectionView?.dataSource = self
        self.imageCollectionView?.register(imageCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.view.addSubview(imageCollectionView!)
        self.imageCollectionView?.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(40)
            make.left.right.equalToSuperview()
            make.height.equalTo(100)
        }
    }
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (images.count >= picturesMaxCount) ? images.count : images.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! imageCollectionViewCell
        cell.image = (indexPath.item == images.count) ? nil : images[indexPath.item]
        cell.delegate = self
        return cell
    }
}
extension ViewController: imageCollectionViewCellDelegate {
    // 添加照片代理方法
    func imageCollectionViewCellDidAddPicture(_ cell: imageCollectionViewCell) {
        self.selectedIndex = (imageCollectionView?.indexPath(for: cell)?.item)!
        let imagepicker = UIImagePickerController()
        imagepicker.sourceType = .photoLibrary
        imagepicker.delegate = self
        present(imagepicker, animated: true, completion: nil)
    }
    
    // 删除照片代理方法
    func imageCollectionViewCellDidRemovePicture(_ cell: imageCollectionViewCell) {
        // 获得cell对应的角标
        let indexPath = imageCollectionView?.indexPath(for: cell)!
        // 根据角标删除图像数组中的图像
        self.images.remove(at: indexPath!.item)
        self.imageCollectionView?.reloadData()
    }
}
extension ViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        debugPrint("打印图像参数信息:\(info)")
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        // 判断图片的索引是否超出数组范围，如果超出就添加
        if self.selectedIndex >= self.images.count {
            // 添加到图像数组
            self.images.append(image)
        } else {
            // 更新索引对应的图像
            self.images[self.selectedIndex] = image
        }
        self.imageCollectionView?.reloadData()
        self.dismiss(animated: true, completion: nil)
    }
}


