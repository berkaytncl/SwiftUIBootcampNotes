//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 7.10.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.black]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: 5 , y: 5),
                        alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}

//Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    .foregroundColor(Color.white)
//    .background(
////                Color.red
////                LinearGradient(
////                    gradient: Gradient(colors: [Color.yellow, Color.black]),
////                    startPoint: .bottom,
////                    endPoint: .center
////                )
//        Circle()
//            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.black]),
//                    startPoint: .leading,
//                    endPoint: .trailing))
//            .frame(width: 100, height: 100, alignment: .center)
//    )
//    .background(
//        Circle()
//            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.black]),
//                    startPoint: .trailing,
//                    endPoint: .leading))
//            .frame(width: 120, height: 120, alignment: .center)
//    )

//Circle()
//    .fill(Color.pink)
//    .frame(width: 100, height: 100)
//    .overlay(
//        Text("1")
//            .font(.largeTitle)
//            .foregroundColor(.white)
//    )
//    .background(
//        Circle()
//            .fill(Color.purple)
//            .frame(width: 110, height: 110)
//    )

//Rectangle()
//    .frame(width: 100, height: 100)
//    .overlay(
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: 50, height: 50)
//        , alignment: .topLeading
//    )
//    .background(
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 150, height: 150 )
//        , alignment: .bottomTrailing
//    )
