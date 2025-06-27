//
//  GrowthApp.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import SwiftUI
import SwiftData

@main
struct GrowthApp: App {
    var local: ModelContainer = {
        let schema = Schema([Session.self])
        let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [configuration])
        } catch {
            fatalError("Could not create local container: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                SessionsList()
            }
        }
        .modelContainer(local)
    }
}
