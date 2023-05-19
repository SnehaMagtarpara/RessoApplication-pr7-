//
//  SongList1.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList1: UIViewController {

    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var singerName: UILabel!
   
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var Song = String()
    var singer = String()
    
    var image1 = UIImage()
    var Song1 = String()
    var singer1 = String()
    
    var image2 = UIImage()
    var Song2 = String()
    var singer2 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = image
        songName.text = "\(Song)"
        singerName.text = "\(singer)"
        
        img.image = image1
        songName.text = "\(Song1)"
        singerName.text = "\(singer1)"
        
        img.image = image2
        songName.text = "\(Song2)"
        singerName.text = "\(singer2)"
     
    }
    
    
    

}
