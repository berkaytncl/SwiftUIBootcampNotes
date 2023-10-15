//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 8.10.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else if fruit == .orange {
            self.backgroundColor = .orange
            self.title = "Orange"
        } else {
            self.backgroundColor = .purple
            self.title = "Unknown Fruit"
        }
    }
    
    enum Fruit {
        case apple
        case orange
        case unknown
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootcamp(count: 25, fruit: .orange)
    }
}
