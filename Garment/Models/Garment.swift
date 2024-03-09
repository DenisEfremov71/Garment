//
//  Item.swift
//  Garment
//
//  Created by Denis Efremov on 2024-03-09.
//

import Foundation
import SwiftData

@Model
final class Garment {
    var timestamp: Date
    var title: String

    init(timestamp: Date, title: String) {
        self.timestamp = timestamp
        self.title = title
    }
}
