//
//  ItemPublication.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 23.04.24.
//

import Foundation

struct ItemPublication : Codable, Hashable {
    var eventID: Int
    var posterUrl: String
    var title: String
    var description: String
    var date: String
    var eventPhotos: [String]
    var youtubeLink: String
    var links: [String]
    var team: [String]
}
