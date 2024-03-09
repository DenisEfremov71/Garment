//
//  Item.swift
//  Garment
//
//  Created by Denis Efremov on 2024-03-09.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
