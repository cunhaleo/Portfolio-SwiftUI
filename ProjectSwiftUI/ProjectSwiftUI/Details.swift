//
//  DetailsView.swift
//  ProjectSwiftUI
//
//  Created by Leonardo Cunha on 18/09/25.
//

import SwiftUI

struct Details: View {
    let item: MenuItem
    
    var body: some View {
        VStack() {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .fontWeight(.light)
                    .font(.system(size: 10))
                    .padding(4)
                    .background(.black)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
        }
        .navigationTitle(item.name)
        Spacer()
    }
}

#Preview {
    Details(item: MenuItem.example)
}
