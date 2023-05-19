//
//  SongList6.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList6: UIViewController {

    @IBOutlet weak var singerName: UILabel!
    @IBOutlet weak var songNmae: UILabel!
    @IBOutlet weak var img: UIImageView!
    var image = UIImage()
    var Song = String()
    var singer = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = image
        songNmae.text = "\(Song)"
        singerName.text = "\(singer)"
    }
    


}
