//
//  ViewController.swift
//  2.3
//
//  Created by Ekaterina Kugeneva on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func forgotLogin() {
        showAlert(tittle: "Note", message: "Your username is User")
    }
    
    @IBAction func forgotPassword() {
        showAlert(tittle: "Note", message: "Your password is User")
    }
    
    
    @IBAction func pressedButton() {
        if  textUsername.text  != "User" || textPassword.text != "Password" {
            showAlert(tittle: "Error", message: "Wrong username or password")
        } else{
            self.performSegue(withIdentifier: "segueFromAtoB", sender: self)
        }
        }
    }
 
    


extension ViewController {
    func showAlert (tittle: String, message:String) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.textUsername.text = ""
            self.textPassword.text = ""
        }
        alert.addAction(okAction)
        present (alert , animated: true )
        
    }
}


       
    
   
