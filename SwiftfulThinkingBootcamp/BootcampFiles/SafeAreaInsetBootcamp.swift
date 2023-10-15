//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 200)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay(
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow),
//                alignment: .bottom
//            )
            .safeAreaPadding(.horizontal, 20)
//            .safeAreaInset(edge: .leading) {
//                EmptyView()
//                    .frame(width: 40)
//                    .frame(maxHeight: .infinity)
////                    .background(.yellow)
//            }
//            .safeAreaInset(edge: .trailing) {
//                EmptyView()
//                    .frame(width: 40)
//                    .frame(maxHeight: .infinity)
////                    .background(.yellow)
//            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
