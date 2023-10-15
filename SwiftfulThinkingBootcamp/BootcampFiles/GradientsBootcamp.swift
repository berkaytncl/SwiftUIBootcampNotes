//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 7.10.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .black]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .black]),
//                    center: .topLeading,
//                    startRadius: 100,
//                    endRadius: 300)
                AngularGradient(
                    gradient: Gradient(colors: [.red, .black]),
                    center: .topLeading,
                    angle: .degrees(225))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
