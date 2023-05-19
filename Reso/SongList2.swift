//
//  SongList2.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList2: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var singerName: UILabel!
    @IBOutlet weak var songName: UILabel!
    var image = UIImage()
    var Song = String()
    var singer = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = image
        songName.text = "\(Song)"
        singerName.text = "\(singer)"
    }
    

}
