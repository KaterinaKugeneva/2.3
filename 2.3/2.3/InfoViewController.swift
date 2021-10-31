//
//  InfoViewController.swift
//  2.3
//
//  Created by Ekaterina Kugeneva on 30.10.2021.
//

import UIKit
class InfoViewController: UIViewController {
    
    @IBOutlet weak var userAge: UILabel!
    
    @IBOutlet weak var userCity: UILabel!
    
    @IBOutlet weak var userSkills: UILabel!
    var userAgeIn: String!
    var userCityIn: String!
    var userSkillsIn: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userAge.text = userAgeIn ?? ""
        userCity.text = userCityIn ?? ""
        userSkills.text = userSkillsIn ?? ""

        
    }
        
}
    
    

