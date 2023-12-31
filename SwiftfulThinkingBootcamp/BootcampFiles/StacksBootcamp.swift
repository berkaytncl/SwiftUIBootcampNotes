//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 8.10.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack -> Vertical
    // HStack -> Horizontal
    // ZStack -> zIndex (back to front)
    var body: some View {
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                    .frame(width: 100, height: 100)
                )
        }
    }
}

//ZStack(alignment: .top) {
//    Rectangle()
//        .fill(.yellow)
//        .frame(width: 350, height: 500)
//
//    VStack(alignment: .leading, spacing: 30) {
//        Rectangle()
//            .fill(.red)
//            .frame(width: 150, height: 150)
//
//        Rectangle()
//            .fill(.green)
//            .frame(width: 100, height: 100)
//
//        HStack(alignment: .bottom) {
//            Rectangle()
//                .fill(.purple)
//                .frame(width: 50, height: 50)
//
//            Rectangle()
//                .fill(.cyan)
//                .frame(width: 75, height: 75)
//
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 25, height: 25)
//        }
//        .background(.white)
//    }
//    .background(.black )
//}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
