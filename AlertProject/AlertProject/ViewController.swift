//
//  ViewController.swift
//  AlertProject
//
//  Created by Bedirhan Savaş on 24.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupFunction(_ sender: Any) {
      
        if(usernameText.text == ""){
            showAlert(titleInput: "Error!", messageInput: "Username can not be empty")
        }
        
        else if(passwordText.text == ""){
            showAlert(titleInput: "Error!", messageInput: "Password can not be empty")
        }
        
        else if(passwordAgainText.text == ""){
            showAlert(titleInput: "Error!", messageInput: "Please verify your password")
        }
        
        else if(passwordText.text != passwordAgainText.text){
            showAlert(titleInput: "Error!", messageInput: "Passwords must be same")
        }
        
        else {
            showAlert(titleInput: "CONGRATS", messageInput: "You have signed up")
        }
    }
    func showAlert (titleInput: String, messageInput: String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
}


