//
//  Publications.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 23.04.24.
//

import Foundation

struct Publications : Codable, Hashable {
    var page: Int
    var per_page: Int
    var total: Int
    var total_pages: Int
    var data: [ItemPublication]
}
