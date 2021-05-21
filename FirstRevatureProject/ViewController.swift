//
//  ViewController.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 4/20/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//import UIKit
//import CoreData
//
//class ViewController: UIViewController {
//
//    // MARK: Variables declearations
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate //Singlton instance
//    var context:NSManagedObjectContext!
//
//    // MARK: View Controller life cycle methods
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        openDatabse()
//    }
//
//    // MARK: Methods to Open, Store and Fetch data
//    func openDatabse()
//    {
//        context = appDelegate.persistentContainer.viewContext
//        let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
//        let newUser = NSManagedObject(entity: entity!, insertInto: context)
//        saveData(UserDBObj:newUser)
//    }
//
//    func saveData(UserDBObj:NSManagedObject)
//    {
//        UserDBObj.setValue("RDC", forKey: "username")
//        UserDBObj.setValue("1234", forKey: "password")
//        UserDBObj.setValue("21", forKey: "age")
//
//        print("Storing Data..")
//        do {
//            try context.save()
//        } catch {
//            print("Storing data Failed")
//        }
//
//        fetchData()
//    }
//
//    func fetchData()
//    {
//        print("Fetching Data..")
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
//        request.returnsObjectsAsFaults = false
//        do {
//            let result = try context.fetch(request)
//            for data in result as! [NSManagedObject] {
//                let userName = data.value(forKey: "username") as! String
//                let age = data.value(forKey: "age") as! String
//                print("User Name is : "+userName+" and Age is : "+age)
//            }
//        } catch {
//            print("Fetching data Failed")
//        }
//    }
//}
