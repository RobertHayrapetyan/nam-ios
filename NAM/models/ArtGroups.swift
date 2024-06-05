//
//  ArtGroups.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 23.04.24.
//

import Foundation

struct ArtGroups : Codable, Hashable {
    var page: Int
    var per_page: Int
    var total: Int
    var total_pages: Int
    var data: [ItemArtGroup]
}
