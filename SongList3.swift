//
//  SongList3.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList3: UIViewController {

    @IBOutlet weak var singername: UILabel!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var Song = String()
    var singer = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = image
        songName.text = "\(Song)"
        singername.text = "\(singer)"
    }
   

}
