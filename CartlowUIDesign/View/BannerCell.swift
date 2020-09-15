//
//  BannerCell.swift
//  CartlowUIDesign
//
//  Created by macbook on 15/09/2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit

class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var bannerImage: UIImageView!
    
    func setUi(ban:Banner){
        
        bannerImage.kf.indicatorType = .activity
        bannerImage.kf.setImage(with: URL(string: ban.image!), placeholder: nil, options:[.transition(.fade(0.7))], progressBlock: nil)
       
        
        
    }
    
    
}
