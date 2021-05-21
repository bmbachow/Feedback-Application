//
//  ReviewViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 4/26/21.
//

import UIKit
import CoreData

class ReviewViewController: UIViewController {
    
    @IBOutlet weak var categoryName: UILabel!
    
    @IBOutlet weak var question: UILabel!
    
    var categoryNameString : String = ""
    
//    var quizModels = [Question]()
    
    let categoryStore = ["Food", "Gym", "Spa", "Room", "Overall"]
    
   
    @IBOutlet weak var pickerView: UIPickerView!
    
    func pickerChoices(in pickerView : UIPickerView) -> Int {
        return 5
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryName.text = categoryNameString
        setupQuestions()
 
        
    }
        
    private func setupQuestions(){
        
//        switch categoryNameString{
//        case "Food":
//            switch questionNumber{
//            case 1: quizModels.append(Question(text: "Did you enjoy the continental breakfast?", answers: [1,2,3,4,5]))
//            case 2: quizModels.append(Question(text: "Did your waiter provide excellent service?", answers: [1,2,3,4,5]))
//            case 3: quizModels.append(Question(text: "Did you enjoy our vegan and vegetarian offerings?", answers: [1,2,3,4,5]))            case 4:
//            case 5:
//            default:
//                print("")
//            }
//        case "Gym":
//        case "Spa":
//        case "Room":
//        case "Overall":
//
//        }
        
    }
    
}



func questionNumber() {
    
}

struct Question {
    let text: String
//    let answers : [Int]
}
        
//        switch categoryNameString{
//        case "Food":
//            question.text = "Did you enjoy the continental breakfast?"
//        case "Gym":
//            question.text = "Did you find your personal trainer helpful?"
//        case "Spa":
//            question.text = "Did you enjoy the sauna?"
//        case "Room":
//            question.text = "How would you rate the maid service?"
//        case "Overall":
//            question.text = "Would you recommend The Bachow Resort to your friends and family?"
//        default:
//         print("")
//        }
        // Do any additional setup after loading the view.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//
//}
