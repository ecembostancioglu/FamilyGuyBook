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
    
    var chosen : Family?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        

        let peter = Family(
            familyGuyName: "Peter",
            familyGuyJob: "Brewery shipping clerk",
            familyGuyImage: UIImage(named: "peter")!)
        
        let lois = Family(
            familyGuyName: "Lois",
            familyGuyJob: "Housewife",
            familyGuyImage: UIImage(named: "lois")!)
        
        let meg = Family(
            familyGuyName: "Meg",
            familyGuyJob: "Student",
            familyGuyImage: UIImage(named: "meg")!)
        
        let chris = Family(
            familyGuyName: "Chris",
            familyGuyJob: "Student",
            familyGuyImage: UIImage(named: "chris")!)
        
        let stewie = Family(
            familyGuyName: "Stewie",
            familyGuyJob: "Inventor",
            familyGuyImage: UIImage(named: "stewie")!)
        
        let brian = Family(
            familyGuyName: "Brian",
            familyGuyJob: "Writer",
            familyGuyImage: UIImage(named: "brian")!)
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosen = familyList[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selected = chosen
        }
    }

}

