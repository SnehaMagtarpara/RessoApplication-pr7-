//
//  PremiumPage.swift
//  Reso
//
//  Created by R93 on 05/05/23.
//

import UIKit

class PremiumPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var cv: UICollectionView!
    
      var bannerImage = [UIImage(named:"benar 1"),UIImage(named:"benar 2"),UIImage(named:"benar 3"),UIImage(named:"benar 4"),UIImage(named:"benar 5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell4
        cell.bannerImg.image = bannerImage[indexPath.row]
 
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 385, height: 400)
    }
    

  

}