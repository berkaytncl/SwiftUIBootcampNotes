//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 10.10.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .navigationTitle("All Inboxes")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                    } label: {
                        Image(systemName: "person.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                        Image(systemName: "flame.fill")
                            .font(.largeTitle)
                    } label: {
                        Image(systemName: "flame.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Image(systemName: "gear")
                            .font(.largeTitle)
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
            .tint(.red)
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar(.hidden)
        }
    }
}

struct MyOtherScreen: View {
    
    @State var isVisibleNavigationLink: Bool = false
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()

            VStack {
                if isVisibleNavigationLink {
                    NavigationLink("Next Screen") {
                        Text("3rd screen")
                    }
                }
                
                Button("Click here") {
                    isVisibleNavigationLink.toggle()
                }
                .foregroundColor(.purple)
                .font(.headline)
                .padding()
                .padding(10)
                .background(.white)
                .cornerRadius(20)
            }
        }
        .navigationTitle("My Screen")
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
