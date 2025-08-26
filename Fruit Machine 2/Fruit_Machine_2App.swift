//
//  Fruit_Machine_2App.swift
//  Fruit Machine 2
//
//  Created by Karl Cridland on 26/08/2025.
//

import SwiftUI

@main
struct Fruit_Machine_2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
