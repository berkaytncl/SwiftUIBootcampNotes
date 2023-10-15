//
//  MenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click me!") {
            Button("One") {
                
            }
            Button("Two") {
                
            }
            Button("Three") {
                
            }
            Button("Four") {
                
            }
        }
        .tint(.red)
    }
}

#Preview {
    MenuBootcamp()
}
