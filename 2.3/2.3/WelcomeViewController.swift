//
//  WelcomeViewController.swift
//  2.3
//
//  Created by Ekaterina Kugeneva on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeText: UILabel!
    var welcomeTextIn: String! = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.text = welcomeTextIn

        
    }
    
  
    
    

}
