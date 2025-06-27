//
//  Session.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import Foundation

struct Session {
    var id = UUID()
    var name: String
    var begins: Date
    var ends: Date
    var description: String = ""
    var attendeeCount: Int = 0
}
