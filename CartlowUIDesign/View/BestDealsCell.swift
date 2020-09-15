//
//  BestDealsCell.swift
//  CartlowUIDesign
//
//  Created by macbook on 14/09/2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit
import Kingfisher
class BestDealsCell: UICollectionViewCell {
  // var items = [Items]()
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = img.frame.size.width/3
        img.clipsToBounds = true
        //catImg.layer.cornerRadius = catImg.frame.size.height * 0.1
        img.layer.borderWidth = 0.5
        img.layer.borderColor = UIColor.gray.cgColor
    }
    
    func setUi(sec:Items){
    
        img.kf.indicatorType = .activity
        img.kf.setImage(with: URL(string:sec.image! ), placeholder: nil, options:[.transition(.fade(0.7))], progressBlock: nil)
}
   
    
}
