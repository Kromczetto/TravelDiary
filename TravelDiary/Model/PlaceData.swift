//
//  PlaceData.swift
//  TravelDiary
//
//  Created by Kuba Kromomołowski on 17/02/2025.
//
import SwiftUI
import SwiftData

@Model
class PlaceData: Identifiable {
    var id: String
    var placeName: String
    var placePhoto: Data?
    var rating: Double
    var descriptions: String
    var location: String // !!! CHANGE TYPE !!!
    var hashtags: [String]?
    
    init(placeName: String = "", placePhoto: Data? = nil,
         rating: Double = 0.0, descriptions: String = "",
         location: String = "", hashtags: [String]? = nil) {
        self.id = UUID().uuidString
        self.placeName = placeName
        self.placePhoto = placePhoto
        self.rating = rating
        self.descriptions = descriptions
        self.location = location
        self.hashtags = hashtags
    }
}
