//
//  ForYou.swift
//  Reso
//
//  Created by R93 on 04/05/23.
//

import UIKit

class ForYou: UIViewController {

    
    
    var mynev : UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    

}
