//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 7.10.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .aspectRatio(contentMode: .fill)
            .background(.black)
            .frame(width: 300, height: 300)
            .foregroundColor(.red)
//            .cornerRadius(150)
            .clipShape(
                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
            )
//            .shadow(radius: 30)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
