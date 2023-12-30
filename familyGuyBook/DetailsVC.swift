//
//  DetailsVC.swift
//  familyGuyBook
//
//  Created by Ecem Bostancıoğlu on 30.12.2023.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    @IBOutlet weak var myJobLabel: UILabel!
    
    var selected : Family?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myImageView.image = selected?.image
        myNameLabel.text = selected?.name
        myJobLabel.text = selected?.job
    }
    

    

}
