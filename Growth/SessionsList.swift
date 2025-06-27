//
//  SessionsList.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import SwiftUI
import SwiftData

struct SessionsList: View {
    @Environment(\.modelContext) private var context
    @Query(sort: \Session.name) private var sessions: [Session]
    
    var body: some View {
        List {
            Image(.cat)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

            Section {
                ForEach(sessions) { session in
                    SessionView(session: session)
                }
            }
        }
        .navigationTitle("Sessions")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("New Session", systemImage: "plus") {
                    insert()
                }
            }
        }
    }
    
    func insert() {
        let i = sessions.count + 1
        let session = Session.sample(name: "Session \(i)")
        context.insert(session)
    }
}

#Preview {
    let container: ModelContainer = .test
    let context = container.mainContext
    let a = Session.sample
    context.insert(Session.sample(name: "Session 1"))
    context.insert(Session.sample(name: "Session 2"))
    return NavigationStack {
        SessionsList()
    }
    .modelContainer(container)
}
