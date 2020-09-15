//
//  IphoneCell.swift
//  CartlowUIDesign
//
//  Created by macbook on 15/09/2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit
import Kingfisher
class IphoneCell: UICollectionViewCell {
    
    @IBOutlet weak var iphoneLbl: UILabel!
    @IBOutlet weak var iphoneImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        iphoneImg.layer.cornerRadius = iphoneImg.frame.size.width/3
        iphoneImg.clipsToBounds = true
        //catImg.layer.cornerRadius = catImg.frame.size.height * 0.1
        iphoneImg.layer.borderWidth = 0.5
        iphoneImg.layer.borderColor = UIColor.gray.cgColor
    }
    
    func setUi(sec:Items){
        
        iphoneImg.kf.indicatorType = .activity
        iphoneImg.kf.setImage(with: URL(string:sec.image! ), placeholder: nil, options:[.transition(.fade(0.7))], progressBlock: nil)
    }
}
