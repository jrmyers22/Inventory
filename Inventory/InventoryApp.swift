//
//  InventoryApp.swift
//  Inventory
//
//  Created by Jacob Myers on 8/22/21.
//

import SwiftUI

@main
struct InventoryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
