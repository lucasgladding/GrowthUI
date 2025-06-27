//
//  Session.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import Foundation
import SwiftData

@Model
class Session {
    var id = UUID()
    var name: String
    var begins: Date
    var ends: Date
    var comments: String = ""
    var attendeeCount: Int = 0
    
    init(
        id: UUID = UUID(),
        name: String,
        begins: Date,
        ends: Date,
        comments: String,
        attendeeCount: Int
    ) {
        self.id = id
        self.name = name
        self.begins = begins
        self.ends = ends
        self.comments = comments
        self.attendeeCount = attendeeCount
    }
}

extension Session: Identifiable {
    //
}

extension Session {
    static var sample: Session {
        sample(name: "Session 1")
    }

    static func sample(name: String) -> Session {
        let begins = Date()
        let ends = begins
        return Session(
            name: name,
            begins: begins,
            ends: ends,
            comments: "Lorem ipsum",
            attendeeCount: 5
        )
    }
}
