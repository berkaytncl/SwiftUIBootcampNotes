//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 11.10.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.purple
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(
            backgroundColor
                .cornerRadius(30)
        )
        .contextMenu {
            Button {
                backgroundColor = .orange
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .red
            } label: {
                Label("Report post", systemImage: "exclamationmark.bubble.fill")
            }
            Button {
                backgroundColor = .green
            } label: {
                Label("Like post", systemImage: "heart.fill")
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
