//
//  SwiftAIApp.swift
//  SwiftAI
//
//  Created by Nitanta Adhikari on 03/05/2023.
//

import SwiftUI

@main
struct SwiftAIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
