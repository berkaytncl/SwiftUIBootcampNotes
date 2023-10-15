//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 8.10.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            
            Spacer()
//                .frame(width: 10)
//                .background(.orange)
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(.blue)
    }
}

//HStack(spacing: 0) {
//    Spacer(minLength: 0)
//        .frame(height: 10)
//        .background(.yellow)
//
//    Rectangle()
//        .frame(width: 50, height: 50)
//
//    Spacer()
//        .frame(height: 10)
//        .background(.yellow)
//
//    Rectangle()
//        .fill(.red)
//        .frame(width: 50, height: 50)
//
//    Spacer()
//        .frame(height: 10)
//        .background(.yellow)
//
//    Rectangle()
//        .fill(.green)
//        .frame(width: 50, height: 50)
//
//    Spacer(minLength: 0)
//        .frame(height: 10)
//        .background(.yellow)
//}
//.background(.yellow)
//.padding(.horizontal, 600)
//.background(.blue)

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
