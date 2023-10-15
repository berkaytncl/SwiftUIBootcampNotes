//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 9.10.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.red
    @State var myTitle: String = "My Title".uppercased()
    @State var count = 0
    
    var body: some View {
        ZStack {
            //Background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1".uppercased()) {
                        self.backgroundColor = .cyan
                        self.myTitle = "Button 1 pressed".uppercased()
                        self.count += 1
                    }
                    
                    Button("Button 2".uppercased()) {
                        self.backgroundColor = .purple
                        self.myTitle = "Button 2 pressed".uppercased()
                        self.count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
