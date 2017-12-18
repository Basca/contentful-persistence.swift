//
//  SingleRecord+CoreDataProperties.swift
//  ContentfulPersistence
//
//  Created by JP Wright on 12.07.17.
//  Copyright © 2017 Contentful GmbH. All rights reserved.
//

import Foundation
import CoreData
import Contentful
import ContentfulPersistence

extension SingleRecord: EntryPersistable {

    static let contentTypeId = "singleRecord"

    @NSManaged var id: String
    @NSManaged var localeCode: String
    @NSManaged var textBody: String?
    @NSManaged var postedDate: Date?
    @NSManaged var createdAt: Date?
    @NSManaged var updatedAt: Date?
    @NSManaged var linkField: Link?
    @NSManaged var locationField: Location

    static func fieldMapping() -> [FieldName: String] {
        return [
            "textBody": "textBody",
            "linkField": "linkField",
            "postedDate": "postedDate"
        ]
    }
}

class Location: NSObject, NSCoding {

    let latitude: Double
    let longitude: Double

    public func encode(with aCoder: NSCoder) {

    }

    public required init?(coder aDecoder: NSCoder) {
        self.latitude = 4.0
        self.longitude = 4.0
    }
}
