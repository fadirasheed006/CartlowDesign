//
//  CategoryCell.swift
//  CartlowUIDesign
//
//  Created by macbook on 14/09/2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit
import  Kingfisher
class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var Lbl: UILabel!
    @IBOutlet weak var catImg: UIImageView!
    
       override func awakeFromNib() {
            super.awakeFromNib()
        catImg.layer.cornerRadius = catImg.frame.size.width/2
        catImg.clipsToBounds = true
        //catImg.layer.cornerRadius = catImg.frame.size.height * 0.1
        catImg.layer.borderWidth = 0.5
        catImg.layer.borderColor = UIColor.gray.cgColor
        }
    func setUi(cat:Category){
       
        catImg.kf.indicatorType = .activity
        catImg.kf.setImage(with: URL(string: cat.icon!), placeholder: nil, options:[.transition(.fade(0.7))], progressBlock: nil)
        Lbl.text = cat.name
        
        
    }
}
