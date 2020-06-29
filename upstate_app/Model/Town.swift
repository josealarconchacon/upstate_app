//
//  Town.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/25/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
import CoreLocation

class Town {
    let townID: String
    let townName: String
    let townImage: String?
    let description: String
    let latitude: Double
    let longitude: Double
    let categories: [String]
    let transit: [String]
    let type: [String]
    
    init(townID: String, townName: String, townImage: String, description: String, latitude:Double, longitude: Double, categories: [String], transit: [String], type: [String]) {
        self.townID = townID
        self.townName = townName
        self.townImage = townImage
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.categories = categories
        self.transit = transit
        self.type = type
    }
    
    init(dict: [String: Any]) {
        self.townID      = dict[TownCollectionKey.TownIDKey] as? String ?? ""
        self.townName    = dict[TownCollectionKey.NameKey] as? String ?? ""
        self.townImage   = dict[TownCollectionKey.ImageKey] as? String ?? ""
        self.description = dict[TownCollectionKey.DescriptionKey] as? String ?? ""
        self.latitude    = dict[TownCollectionKey.LatitudeKey] as? Double ?? 0.0
        self.longitude   = dict[TownCollectionKey.LongitudeKey] as? Double ?? 0.0
        self.categories  = dict[TownCollectionKey.CategoriesKey] as? [String] ?? [""]
        self.transit     = dict[TownCollectionKey.TransitKey] as? [String] ?? [""]
        self.type        = dict[TownCollectionKey.TypeKey] as? [String] ?? [""]
    }
}
