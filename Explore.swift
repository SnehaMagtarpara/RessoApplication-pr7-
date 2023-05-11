//
//  Explore.swift
//  Reso
//
//  Created by R93 on 09/05/23.
//

import UIKit

class Explore: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

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
    
    
    var img = [UIImage(named:"4.1"),UIImage(named:"4.2"),UIImage(named:"4.3"),UIImage(named:"4.4"),UIImage(named:"4.5"),UIImage(named:"4.6"),UIImage(named:"4.7"),UIImage(named:"4.8"),UIImage(named:"4."),UIImage(named:"4.10"),]
    var song = ["Retro Gold","OOs Hip Hop","Punjabi Pop 2010s","90s Bollwwood","Classc R&B 2010s","Tamil Retro Hits","Unfading 90s","90s Tamil Chill","Mollywood Romance"]
    var singer = ["Kumar Sanu,Alka Yagnik","Raftar","Diljit Disanjh,Param Singh","Lata Mangeshkar","Kesarabai Kerkar","Amrinder Gill","Mano,Unni Menon","Radhika Thailak,K.J.","Unni Menon,Sujath","Haricharan,Shahab"]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        songcatchlabel.layer.cornerRadius = 22
        songcatchlabel.layer.masksToBounds = true
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.cv{
            
           let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell5
                cell.img.image = image[indexPath.row]
                cell.songName.text = songName[indexPath.row]
                cell.singername.text = singerName[indexPath.row]
                cell.img2.image = image2[indexPath.row]
                cell.songNameLabel2.text = songName2[indexPath.row]
                cell.singerNameLabel2.text = singername2[indexPath.row]
                cell.img3.image = image3[indexPath.row]
                cell.songNamelabel3.text = songName3[indexPath.row]
                cell.singerNameLabel3.text = singername3[indexPath.row]
            return cell
        }
        else
        {
            let cell2 = cv.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell6
            cell2.imge.image = img[indexPath.row]
            cell2.song.text = song[indexPath.row]
            cell2.singer.text = singer[indexPath.row]
            return cell2
        }
    

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 373, height: 312)
    }
    

}
