import Foundation
import CoreData
import UIKit

class DBHelper{
    static var inst = DBHelper()

    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext

    static var checkData = false
    
    func createUser(username: String, password: String, email: String){

        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context!) as! User
        user.username = username
        user.password = password
        user.email = email

        do{
            try context?.save()
            print("user saved")
        }
        catch{
            print("user not saved")
        }

    }

    func getUser (username : String)-> User{

        var user = User()
        var fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchReq.predicate = NSPredicate(format: "username == %@", username)

        fetchReq.fetchLimit = 1
        do {
            let req = try context?.fetch(fetchReq) as! [User]
            if(req.count != 0){
                user = req.first as! User
                DBHelper.checkData = true
            }
            else{
                DBHelper.checkData = false
            }
        }
        catch{
            print("")
        }

            return user


    }
    
    func reviewFood(username: String, rating: Double){
        
        
        var user = User()
                var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
                fetchReq.predicate = NSPredicate(format: "username == %@", username)
                do{
                    let user1 = try context?.fetch(fetchReq)
        
                    if (user1?.count != 0){
                        user = user1?.first as! User
        
                        user.foodFeedback = rating
                        try context?.save()
                        print("food data saved")
                    }
        
                }
                    catch {
                        print("error")
                    }
        
        
        
    }
    
    func reviewGym(username: String, rating: Double){
        
        var user = User()
                var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
                fetchReq.predicate = NSPredicate(format: "username == %@", username)
                do{
                    let user1 = try context?.fetch(fetchReq)
        
                    if (user1?.count != 0){
                        user = user1?.first as! User
        
                        user.gymFeedback = rating
                        try context?.save()
                        print("gym data saved")
                    }
        
                }
                    catch {
                        print("error")
                    }
        
    }
    
    func reviewSpa(username: String, rating: Double){
        
        var user = User()
                var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
                fetchReq.predicate = NSPredicate(format: "username == %@", username)
                do{
                    let user1 = try context?.fetch(fetchReq)
        
                    if (user1?.count != 0){
                        user = user1?.first as! User
        
                        user.spaFeedback = rating
                        try context?.save()
                        print("spa data saved")
                    }
        
                }
                    catch {
                        print("error")
                    }
        
    }
    
    func reviewRoom(username: String, rating: Double){
        
        var user = User()
                var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
                fetchReq.predicate = NSPredicate(format: "username == %@", username)
                do{
                    let user1 = try context?.fetch(fetchReq)
        
                    if (user1?.count != 0){
                        user = user1?.first as! User
        
                        user.roomFeedback = rating
                        try context?.save()
                        print("room data saved")
                    }
        
                }
                    catch {
                        print("error")
                    }
        
    }
    
    func reviewOverall(username: String, rating: Double){
        
        var user = User()
                var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
                fetchReq.predicate = NSPredicate(format: "username == %@", username)
                do{
                    let user1 = try context?.fetch(fetchReq)
        
                    if (user1?.count != 0){
                        user = user1?.first as! User
        
                        user.overallFeedback = rating
                        try context?.save()
                        print("overall data saved")
                    }
        
                }
                    catch {
                        print("error")
                    }
        
    }
    
    
    func updatePassword(username: String, password: String){
        var user = User()
                var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "User")
                fetchReq.predicate = NSPredicate(format: "username == %@", username)
                do{
                    let user1 = try context?.fetch(fetchReq)
        
                    if (user1?.count != 0){
                        user = user1?.first as! User
        
                        user.password = password
                        try context?.save()
                        print("password updated")
                    }
        
                }
                    catch {
                        print("error")
                    }
    }

}

//
//class DBHelper {
//    static var inst = DBHelper()
//
//    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
//
//    func addData(object : [String:String]){
//        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
//        student.name = object["name"]
//        student.course = object["course"]
//
//        do{
//            try context?.save()
//            print("data saved")
//        }
//        catch{
//            print("data not saved")
//        }
//
//    }
//}
//
//    func getData()-> [Student]{
//        var stu = [Student]()
//        var fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
//        do{
//            stu = try context?.fetch(fetchReq) as! [Student]
//        }
//        catch{
//            print("can not fetch any data")
//        }
//        return stu
//
//    }
//    
//
//    func getOneData (name : String)-> Student{
//
//        var st = Student()
//        var fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
//        fetchReq.predicate = NSPredicate(format: "name == %@", name)
//
//        fetchReq.fetchLimit = 1
//        do {
//            let req = try context?.fetch(fetchReq) as! [Student]
//            if(req.count != 0){
//                st = req.first as! Student
//            }
//            else{
//                print("data not found")
//            }
//        }
//        catch{
//            print("")
//        }
//
//    return st
//    }
//
//    func updateData(object : [String:String]){
//
//        var st = Student()
//        var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "Student")
//        fetchReq.predicate = NSPredicate(format: "name == %@", object["name"]!)
//        do{
//            let stu = try context?.fetch(fetchReq)
//
//            if (stu?.count != 0){
//                st = stu?.first as! Student
//
//                st.course = object["course"]
//                try context?.save()
//                print("data saved")
//            }
//
//        }
//            catch {
//                print("error")
//            }
//        }
//
//
//
//
//
//
//
//
//
//    func deleteData(name :String){
//        var fetchReq = NSFetchRequest<NSManagedObject>.init(entityName: "Student")
//        fetchReq.predicate = NSPredicate(format: "name == %@", name)
//
//        do{
//            let st = try context?.fetch(fetchReq)
//            context?.delete(st?.first as! Student)
//            try context?.save()
//        }
//        catch{
////            do{
////                try context?.save()
////                            print("data deleted")
////            }catch{
////                print("data not deleted")
////            }
//        }
//    }
//}
//
//
