//
//  ItemRow.swift
//  ProjectSwiftUI
//
//  Created by Leonardo Cunha on 18/09/25.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment: .leading){
                Text(item.name)
                Text("R$ \(item.price)")
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
