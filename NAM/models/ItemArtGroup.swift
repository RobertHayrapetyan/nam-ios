//
//  ItemArtGroup.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 23.04.24.
//

import Foundation

struct ItemArtGroup : Codable, Hashable{
    var posterUrl: String
    var eventID: Int
    var title: String
    var description: String
    var date: String
    var eventPhotos: [String]
    var youtubeLink: String
    var links: [String]
    var team: [String]

}
