//
//  Category+CoreDataProperties.swift
//  
//
//  Created by Boris Bügling on 31/03/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData
import Contentful
import ContentfulPersistence

extension Category: EntryPersistable {

    static let contentTypeId = "5KMiN6YPvi42icqAUQMCQe"

    @NSManaged var id: String
    @NSManaged var localeCode: String?
    @NSManaged var createdAt: Date?
    @NSManaged var updatedAt: Date?
    @NSManaged var title: String?
    @NSManaged var categoryInverse: NSSet?
    @NSManaged var icon: Asset?

    static func fieldMapping() -> [FieldName: String] {
        return [
            "title": "title",
            "icon": "icon"
        ]
    }
}
