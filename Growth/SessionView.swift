//
//  SessionView.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import SwiftUI

struct SessionView: View {
    var session: Session

    private var timeText: String {
        [
            session.begins.formatted(.dateTime.hour().minute()),
            session.ends.formatted(.dateTime.hour().minute()),
        ].joined(separator: " to ")
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(session.name)
                .font(.title2)
                .bold()
            Group {
                HStack {
                    Text(timeText)
                    Spacer()
                    Text("\(session.attendeeCount) attendees")
                }
                Text(session.comments)
            }
            .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    let begins = Date()
    let ends = begins
    let session = Session(
        name: "Session 1",
        begins: begins,
        ends: begins,
        comments: "Lorem ipsum",
        attendeeCount: 5
    )
    List {
        SessionView(session: session)
        SessionView(session: session)
        SessionView(session: session)
        SessionView(session: session)
    }
}
