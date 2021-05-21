//
//  FoodReviewViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/5/21.
//

import UIKit

class FoodReviewViewController: UIViewController {
    @IBOutlet weak var rate1: CosmosView!
    
    @IBOutlet weak var rate2: CosmosView!
    
    @IBOutlet weak var rate3: CosmosView!
    
    @IBOutlet weak var rate4: CosmosView!
    
    @IBOutlet weak var rate5: CosmosView!
    
//    var foodRatingArray : Array<Double> = []
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func submit(_ sender: Any) {
        var totalRating = rate1.rating + rate2.rating + rate3.rating + rate4.rating + rate5.rating
        var averageRating = totalRating/5
        DBHelper.inst.reviewFood(username: LoginViewController.user!, rating: averageRating)
        print("data saved", averageRating)
        let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeViewController
        navigationController?.pushViewController(vc, animated: true)
    }


}

//
//ratingBar.settings.fillMode = .half
//        rate1.didFinishTouchingCosmos = {
//            rate in
//
//            //store value in array
//        }



//cosmosviewoutlet.didFinishTouchingComsos = {
//variableNameForRating in
//call your function to append to coreData
//self.array.append(variableNameForRating)
//}
//[3:46 PM]
//you need to append in didFinishTouchingCosmos
