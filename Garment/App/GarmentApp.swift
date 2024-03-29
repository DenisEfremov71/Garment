//
//  GarmentApp.swift
//  Garment
//
//  Created by Denis Efremov on 2024-03-09.
//

import SwiftUI
import SwiftData

@main
struct GarmentApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Garment.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            GarmentListView()
        }
        .modelContainer(sharedModelContainer)
    }
}
