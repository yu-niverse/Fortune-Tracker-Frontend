//
//  Fortune_TrackerApp.swift
//  Fortune-Tracker
//
//  Created by 莊婕妤 on 2023/8/13.
//

import SwiftUI

@main
struct Fortune_TrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
