//
//  User+CoreDataProperties.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/6/21.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var email: String?
    @NSManaged public var foodFeedback: Double
    @NSManaged public var gymFeedback: Double
    @NSManaged public var overallFeedback: Double
    @NSManaged public var password: String?
    @NSManaged public var roomFeedback: Double
    @NSManaged public var spaFeedback: Double
    @NSManaged public var username: String?

}

extension User : Identifiable {

}
