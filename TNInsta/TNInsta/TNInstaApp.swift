//
//  TNInstaApp.swift
//  TNInsta
//
//  Created by MAC-OBS-27 on 22/02/21.
//

import SwiftUI

@main
struct TNInstaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabbarView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
             
        }
    }
}
