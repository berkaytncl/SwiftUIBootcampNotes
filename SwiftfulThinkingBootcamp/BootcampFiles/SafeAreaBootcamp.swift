//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 9.10.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
    }
}

//ZStack {
//    //background
//    Color.blue
//        .edgesIgnoringSafeArea(.all)
//
//    //foreground
//    VStack {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        Spacer()
//    }
//    .frame(maxWidth: .infinity, maxHeight: .infinity)
//    .background(.red)
//}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
