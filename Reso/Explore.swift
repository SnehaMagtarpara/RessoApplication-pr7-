//
//  Explore.swift
//  Reso
//
//  Created by R93 on 09/05/23.
//

import UIKit

class Explore: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
   
    
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    
  
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var songcatchlabel: UILabel!
    
    
    
    var image = [UIImage(named:"1.1"),UIImage(named:"1.2"),UIImage(named:"1.3"),UIImage(named:"1.4"),UIImage(named:"1.5")]
    var songName = ["Man Meri Jaan","Jhume Zaamana","Tere Dard Se","Main Woh Chaand","Chand Sifarish"]
    var singerName = ["king","Raj Meena","Kumar Sanu","Darshan Raval","Shaan,Jatin-Lalit,Kailash Kher"]
    
    var image2 = [UIImage(named:"2.1"),UIImage(named:"2.2"),UIImage(named:"2.3"),UIImage(named:"2.4"),UIImage(named:"2.5")]
    var songName2 = ["Apna Bana Le","Thoda Thoda Pyar","Naiyo Lagda","Bholenath(A Love Story)","Chori Chori Dil Tera"]
    var singername2 = ["Arijit Singh","Arijit Singh,Sachin-Jigar","Stebin Ben,Nilesh Ahuja, Kumar Sanu","Kaka WRLD","Anurati Roy"]
    
    var image3 = [UIImage(named:"3.1"),UIImage(named:"3.2"),UIImage(named:"3.3"),UIImage(named:"3.4"),UIImage(named:"3.5")]
    var songName3 = ["Paa Liya hain Pyar Tera","Aaja We Mahiya(lofi)","Bhaad Yaara(Slowed...)","Bheed Mein Tanhaai Main","Safar(Lofi)"]
    var singername3 = ["Udit Narayan,Alka Yagnik","Sahel Ahmed","Angad Ji","Gopi Saini,Himanshu Bairwa","wtfsagar"]

    var img4 = [UIImage(named:"4.1"),UIImage(named:"4.2"),UIImage(named:"4.3"),UIImage(named:"4.4"),UIImage(named:"4.5"),UIImage(named:"4.6"),UIImage(named:"4.7"),UIImage(named:"4.8"),UIImage(named:"4.9"),UIImage(named:"4.10"),]
    var song4 = ["Retro Gold","OOs Hip Hop","Punjabi Pop 2010s","90s Bollwwood","Classc R&B 2010s","Tamil Retro Hits","Unfading 90s","90s Tamil Chill","Mollywood Romance","Gujarati"]
    var singer4 = ["Kumar Sanu,Alka Yagnik","Raftar","Diljit Disanjh,Param Singh","Lata Mangeshkar","Kesarabai Kerkar","Amrinder Gill","Mano,Unni Menon","Radhika Thailak,K.J.","Unni Menon,Sujath","Haricharan,Shahab"]
    
    var img5 = [UIImage(named:"5.1"),UIImage(named:"5.2"),UIImage(named:"5.3")]
    var songName5 = ["Ariyoshi synthia","Bollywood Party","Arijit Singh"]
    var singerName5 = ["Curated by Resso","Naksh Aziz, Viashl","Vishal-Shekhar,Nikhil"]

    override func viewDidLoad() {
        super.viewDidLoad()
        songcatchlabel.layer.cornerRadius = 22
        songcatchlabel.layer.masksToBounds = true
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv
        {
            return image.count
        }
        else if collectionView == self.cv2{
            return img4.count
        }
        else
        {
            return img5.count
        }
            
        
      
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv
        {
            let cell4 = cv.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell5
                    cell4.img.image = image[indexPath.row]
                    cell4.songName.text = songName[indexPath.row]
                    cell4.singername.text = singerName[indexPath.row]
                
                    cell4.img2.image = image2[indexPath.row]
                    cell4.songNameLabel2.text = songName2[indexPath.row]
                    cell4.singerNameLabel2.text = singername2[indexPath.row]
                
                    cell4.img3.image = image3[indexPath.row]
                    cell4.songNamelabel3.text = songName3[indexPath.row]
                    cell4.singerNameLabel3.text = singername3[indexPath.row]
            
                return cell4
            
        }
        else if collectionView == self.cv2
        {
            let cell5 = cv2.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCell6
                    cell5.img4.image = img4[indexPath.row]
                    cell5.song4.text = song4[indexPath.row]
                    cell5.singer4.text = singer4[indexPath.row]
            
            return cell5
        }
        else
        {
            let cell6 = cv3.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCell7
                    cell6.img5.image = img5[indexPath.row]
                    cell6.song5.text = songName5[indexPath.row]
                    cell6.singer5.text = singerName5[indexPath.row]
            
            return cell6
            
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv
        {
            return CGSize(width: 373, height: 312)
        }
        else if collectionView == self.cv2{
            return CGSize(width: 370, height: 188)
        }
        else
        {
            return CGSize(width: 370, height: 188)
        }
        

            
       
    }
    

}
