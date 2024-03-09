//
//  HeaderView.swift
//  Garment
//
//  Created by Denis Efremov on 2024-03-09.
//

import SwiftUI

struct HeaderView<Content: View>: View {
    var title: String
    var content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        ZStack(alignment: .trailing) {
            Rectangle()
                .fill(Color.white)
            Text(title)
                .font(.title3)
                .frame(maxWidth: .infinity)
            content
        }
        .padding(10)
        .border(Color.gray, width: 2)
        .frame(maxWidth: .infinity, maxHeight: 16)
    }
}

#Preview {
    HeaderView(title: "Add") {
        Button(action: {}, label: {
            Image(systemName: "plus.circle")
                .font(.title)
        })
    }
}
