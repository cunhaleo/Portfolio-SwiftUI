//
//  ContentView.swift
//  ProjectSwiftUI
//
//  Created by Leonardo Cunha on 17/09/25.
//

import SwiftUI

struct ContentView: View {
    var menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

#Preview {
    ContentView()
}
