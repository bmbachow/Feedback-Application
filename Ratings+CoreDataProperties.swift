//
//  Ratings+CoreDataProperties.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/3/21.
//
//

import Foundation
import CoreData


extension Ratings {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ratings> {
        return NSFetchRequest<Ratings>(entityName: "Ratings")
    }

    @NSManaged public var rating: Int16

}

extension Ratings : Identifiable {

}
