//
//  SessionsList.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import SwiftUI
import SwiftData

struct SessionsList: View {
    @Query var sessions: [Session]

    var body: some View {
        List(sessions) { session in
            SessionView(session: session)
        }
    }
}

#Preview {
    let container: ModelContainer = .test
    let context = container.mainContext
    let a = Session.sample
    context.insert(Session.sample(name: "Session 1"))
    context.insert(Session.sample(name: "Session 2"))
    return SessionsList()
        .modelContainer(container)
}
