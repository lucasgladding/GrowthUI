//
//  SessionsList.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import SwiftUI

struct SessionsList: View {
    let sessions: [Session] = [
        .sample,
        .sample,
    ]

    var body: some View {
        List(sessions) { session in
            SessionView(session: session)
        }
    }
}

#Preview {
    SessionsList()
}
