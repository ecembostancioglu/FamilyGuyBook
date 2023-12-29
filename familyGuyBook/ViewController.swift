//
//  ViewController.swift
//  familyGuyBook
//
//  Created by Ecem Bostancıoğlu on 29.12.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTableView: UITableView!
    
    var familyList = [Family]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        let peter = Family(
            name: "Peter",
            job: "Brewery shipping clerk",
            image: UIImage(named: "peter")!)
        
        let lois = Family(
            name: "Lois",
            job: "Housewife",
            image: UIImage(named: "lois")!)
        
        let meg = Family(
            name: "Meg",
            job: "Student",
            image: UIImage(named: "meg")!)
        
        let chris = Family(
            name: "Chris",
            job: "Student",
            image: UIImage(named: "chris")!)
        
        let stewie = Family(
            name: "Stewie",
            job: "Inventor",
            image: UIImage(named: "stewie")!)
        
        let brian = Family(
            name: "Brian",
            job: "Writer",
            image: UIImage(named: "brian")!)
        
        familyList.append(peter)
        familyList.append(lois)
        familyList.append(meg)
        familyList.append(chris)
        familyList.append(stewie)
        familyList.append(brian)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = familyList[indexPath.row].name
        return cell
    }
    

}

