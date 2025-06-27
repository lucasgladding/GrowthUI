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

extension Session: Identifiable {
    //
}

extension Session {
    static var sample: Session {
        let begins = Date()
        let ends = begins
        return Session(
            name: "Session 1",
            begins: begins,
            ends: ends,
            description: "Lorem ipsum",
            attendeeCount: 5
        )
    }
}
