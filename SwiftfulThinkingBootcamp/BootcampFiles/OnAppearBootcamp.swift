//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 12.10.2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            Text("\(myText), counter: \(count)")
            ScrollView {
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                            .onDisappear {
                                count -= 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    myText = "Ending text."
                }
            })
            .navigationTitle("On Appear Bootcamp")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
