//
//  Categories+CoreDataProperties.swift
//  FirstRevatureProject
//
//  Created by Brian Bachow on 5/3/21.
//
//

import Foundation
import CoreData


extension Categories {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Categories> {
        return NSFetchRequest<Categories>(entityName: "Categories")
    }

    @NSManaged public var category: String?
    @NSManaged public var relationship: Questions?

}

extension Categories : Identifiable {

}
