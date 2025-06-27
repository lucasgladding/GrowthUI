//
//  ModelContainer+dev.swift
//  Growth
//
//  Created by Lucas Gladding on 2025-06-27.
//

import Foundation
import SwiftData

extension ModelContainer {
    static var local: ModelContainer = {
        let schema = Schema([Session.self])
        let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [configuration])
        } catch {
            fatalError("Could not create local container: \(error)")
        }
    }()

    static var test: ModelContainer = {
        let schema = Schema([Session.self])
        let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        do {
            return try ModelContainer(for: schema, configurations: [configuration])
        } catch {
            fatalError("Could not create test container: \(error)")
        }
    }()
}
