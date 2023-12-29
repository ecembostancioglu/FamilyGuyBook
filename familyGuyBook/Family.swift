//
//  Family.swift
//  familyGuyBook
//
//  Created by Ecem Bostancıoğlu on 30.12.2023.
//

import Foundation
import UIKit

class Family {
    
    var name : String
    var job : String
    var image : UIImage
    
    init(name: String, job: String, image: UIImage) {
        self.name = name
        self.job = job
        self.image = image
    }
}
