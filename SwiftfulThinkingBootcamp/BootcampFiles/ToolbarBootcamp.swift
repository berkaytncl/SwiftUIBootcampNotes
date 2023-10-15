//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 14.10.2023.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(.white)
                            .frame(width: 100, height: 100)
                    }
                    
                    Text("Hey 🤩")
                        .foregroundStyle(.white)
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "gear")
                }
//                ToolbarItem(placement: .principal) {
//                    HStack {
//                        Image(systemName: "gear")
//                        Image(systemName: "house.fill")
//                    }
//                }
            }
//            .navigationBarHidden(true) // deprecated
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
