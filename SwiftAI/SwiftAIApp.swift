//
//  SwiftAIApp.swift
//  SwiftAI
//
//  Created by Nitanta Adhikari on 03/05/2023.
//

import SwiftUI
import OpenAIKit

enum Keys {
    static let apiKey = ProcessInfo.processInfo.environment["OPENAI_API_KEY"]!
    static let organization = ProcessInfo.processInfo.environment["OPENAI_ORGANIZATION"]!
}

@main
struct SwiftAIApp: App {
    let persistenceController = PersistenceController.shared
    let apple : String = "apple"
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
