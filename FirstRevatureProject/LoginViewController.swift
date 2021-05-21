//
//  LoginViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/3/21.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    static var user : String?
    @IBAction func login(_ sender: Any) {

        var data = DBHelper.inst.getUser(username: userName.text!)
        
        if (DBHelper.checkData){
          
            if data.username == userName.text && data.password == password.text{
                LoginViewController.user = data.username
                let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeViewController
                navigationController?.pushViewController(vc, animated: true)
            }
            else {
                errorMessage.text = "Password is incorrect"
            }
        } else {
            errorMessage.text = "User name not found"
        }
                
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "sign up") as! SignUpViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func resetPassword(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "reset") as! ResetPasswordViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessage.text = ""
    }
    
}
