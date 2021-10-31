//
//  ViewController.swift
//  2.3
//
//  Created by Ekaterina Kugeneva on 26.10.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var textUsername: UITextField!
    @IBOutlet var textPassword: UITextField!
    @IBOutlet var logInButton: UIButton!
    private var password: String = user.userpassword
    private var username: String = user.username
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textUsername.delegate = self
        textPassword.delegate = self
        textUsername.returnKeyType = .next
        textPassword.returnKeyType = .done
        textPassword.enablesReturnKeyAutomatically = true
    }
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textUsername {
            textPassword.becomeFirstResponder()
        }
        if textField == textPassword {
            textPassword.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotLogin() {
        showAlert(tittle: "Note", message: "Your username is User")
    }
    
    @IBAction func forgotPassword() {
        showAlert(tittle: "Note", message: "Your password is Password")
    }
    
    
    @IBAction func pressedButton() {
        if  textUsername.text  != username || textPassword.text != password {
            showAlert(tittle: "Error", message: "Wrong username or password")
        } else{
            self.performSegue(withIdentifier: "segueFromAtoB", sender: self)
        }
    }
   
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
        textUsername.text = ""
        textPassword.text = ""
        
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   guard let tabBarController = segue.destination as? UITabBarController else {return}
   guard let tabBarControllers = tabBarController.viewControllers else {return}
   
   for controller in tabBarControllers {
       
       switch controller {
       case is WelcomeViewController:
           let destController = controller as! WelcomeViewController
           destController.welcomeTextIn = textUsername.text
           destController.imageUserIn = user.userPicture
       case is InfoViewController:
           let destController = controller as! InfoViewController
           destController.userAgeIn = user.ageOfUser
           destController.userCityIn = user.cityOfUser
           destController.userSkillsIn = user.userInfo
       default:
           break
       }
       
   }
}
    


}


extension ViewController {
    func showAlert (tittle: String, message:String) {
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) //{ _ in self.textUsername.text = ""
          //  self.textPassword.text = ""
        //}
        alert.addAction(okAction)
        present (alert , animated: true )
        
    }
}





