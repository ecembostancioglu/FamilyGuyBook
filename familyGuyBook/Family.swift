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
    
    init(familyGuyName: String, familyGuyJob: String, familyGuyImage: UIImage) {
        self.name = familyGuyName
        self.job = familyGuyJob
        self.image = familyGuyImage
    }
}
