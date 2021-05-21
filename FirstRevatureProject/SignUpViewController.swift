//
//  SignUpViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/3/21.
//

import UIKit
import CoreData


class SignUpViewController: UIViewController {

    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
        
    @IBOutlet weak var email: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        
        var data = DBHelper.inst.getUser(username: userName.text!)

        if (DBHelper.checkData){

            if data.username == userName.text{
                errorMessage.text = "User already exists"
            }

        }
        
        else {
            DBHelper.inst.createUser(username: userName.text!, password: password.text!, email: email.text!)
    print("data saved")
            let vc = storyboard?.instantiateViewController(identifier: "login") as! LoginViewController
            navigationController?.pushViewController(vc, animated: true)
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //keep error blank by default
        errorMessage.text = ""

        // Do any additional setup after loading the view.
    }
    

}
