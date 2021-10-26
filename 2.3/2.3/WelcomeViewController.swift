//
//  WelcomeViewController.swift
//  2.3
//
//  Created by Ekaterina Kugeneva on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.text = "Welcome, "

        
    }
    
    @IBAction func backAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    

}
