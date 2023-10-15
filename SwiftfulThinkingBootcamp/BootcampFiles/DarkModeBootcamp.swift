//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 12.10.2023.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is Primary")
                        .foregroundStyle(.primary)
                    
                    Text("This color is Secondary")
                        .foregroundStyle(.secondary)
                    
                    Text("This color is Black")
                        .foregroundStyle(.black)
                    
                    Text("This color is White")
                        .foregroundStyle(.white)
                    
                    Text("This color is globally adaptive")
                        .foregroundStyle(Color("CustomColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
