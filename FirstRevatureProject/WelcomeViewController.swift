//
//  WelcomeViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 4/26/21.
//

import UIKit
import CoreData

class WelcomeViewController: UIViewController {

    @IBOutlet weak var CategoriesTable: UITableView!
    
    let categories = ["Food", "Gym", "Spa", "Room", "Overall"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CategoriesTable.delegate = self
        CategoriesTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension WelcomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var category = (categories[indexPath.row])
        print("you tapped \(category)")
        switch(category){
        case "Food":
            let vc = storyboard?.instantiateViewController(identifier: "Food") as! FoodReviewViewController
            navigationController?.pushViewController(vc, animated: true)
        case "Spa":
            let vc = storyboard?.instantiateViewController(identifier: "Spa") as! SpaReviewViewController
            navigationController?.pushViewController(vc, animated: true)
        case "Gym":
            let vc = storyboard?.instantiateViewController(identifier: "Gym") as! GymReviewViewController
            navigationController?.pushViewController(vc, animated: true)
        case "Room":
            let vc = storyboard?.instantiateViewController(identifier: "Room") as! RoomReviewViewController
            navigationController?.pushViewController(vc, animated: true)
        case "Overall":
            let vc = storyboard?.instantiateViewController(identifier: "Overall") as! OverallReviewViewController
            navigationController?.pushViewController(vc, animated: true)
        default: print("")
        }
        
        
        
    }
}
extension WelcomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = categories[indexPath.row]
        
        return cell
        
        
    }
        
}
