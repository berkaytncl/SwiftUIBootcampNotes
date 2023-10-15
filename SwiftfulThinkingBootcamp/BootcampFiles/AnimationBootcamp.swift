//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 9.10.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 90 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                    Animation
                        .default
//                        .repeatForever(),
                        .repeatCount(5, autoreverses: true),
                    value: isAnimated
                )
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
