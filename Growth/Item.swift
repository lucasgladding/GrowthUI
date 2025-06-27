//
//  Item.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
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
