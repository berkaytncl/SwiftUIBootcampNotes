//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 6.10.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(.brown)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(.blue)
//            .stroke(.red, lineWidth: 20)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [20]))
            .trim(from:  0.3, to: 0.9)
//            .stroke(.red, lineWidth: 5)
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
