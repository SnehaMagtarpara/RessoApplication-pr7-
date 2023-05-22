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
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var img: UIImageView!
    
    var time = Timer()
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
        progressBar.progress == 0.0
        progressbar()
     
    }
    func progressbar()
    {
         var a : Float = 0.0
      
        self.progressBar.progress = a
    
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            a += 0.01
            self.progressBar.progress = a
            if self.progressBar.progress == 1.0

            {
                self.navigation()
                self.time.invalidate()
            }
        })
    }
    func navigation()
    {
        let n = storyboard?.instantiateViewController(withIdentifier: "Explore") as! Explore
        navigationController?.popViewController(animated: true)
    }
    
    
    
    

}
