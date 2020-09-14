//
//  ViewController.swift
//  CartlowUIDesign
//
//  Created by macbook on 14/09/2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var categoryCollection: UICollectionView!
    
    var categories = [Category]()
    var homeApi = HomeResponseApi()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeApi.getHomeResponse { (homeData) in
            if let homeData = homeData {
                self.categories = homeData.category!
                print(self.categories.count)
                // reload data from api and set to collection
                DispatchQueue.main.async {
                    self.categoryCollection.reloadData()
                }
                
            }
        }
        
        
    }
    


}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(categories.count)
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCell
        cell.setUi(cat: categories[indexPath.row])
        
        return cell
    }
    
    
    
    
}

