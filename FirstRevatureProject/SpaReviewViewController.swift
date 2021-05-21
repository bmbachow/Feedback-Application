//
//  SpaReviewViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/5/21.
//

import UIKit

class SpaReviewViewController: UIViewController {
    
    @IBOutlet weak var rate1: CosmosView!
    
    @IBOutlet weak var rate2: CosmosView!
    
    @IBOutlet weak var rate3: CosmosView!
    
    @IBOutlet weak var rate4: CosmosView!
    
    @IBOutlet weak var rate5: CosmosView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        
        var totalRating = rate1.rating + rate2.rating + rate3.rating + rate4.rating + rate5.rating
        var averageRating = totalRating/5
        DBHelper.inst.reviewSpa(username: LoginViewController.user!, rating: averageRating)
        print("data saved", averageRating)
        let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
