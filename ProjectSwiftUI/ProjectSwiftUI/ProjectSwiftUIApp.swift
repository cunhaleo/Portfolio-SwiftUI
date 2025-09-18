//
//  ProjectSwiftUIApp.swift
//  ProjectSwiftUI
//
//  Created by Leonardo Cunha on 17/09/25.
//

import SwiftUI

@main
struct ProjectSwiftUIApp: App {
    
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
