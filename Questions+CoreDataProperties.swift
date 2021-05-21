//
//  Questions+CoreDataProperties.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/3/21.
//
//

import Foundation
import CoreData


extension Questions {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Questions> {
        return NSFetchRequest<Questions>(entityName: "Questions")
    }

    @NSManaged public var question: String?
    @NSManaged public var relationship: Ratings?

}

extension Questions : Identifiable {

}
