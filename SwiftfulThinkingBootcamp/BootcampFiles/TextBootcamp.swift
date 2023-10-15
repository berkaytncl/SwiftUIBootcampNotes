//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 6.10.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Hello, World!")
//            .font(.largeTitle)
//            .fontWeight(.black)
//            .foregroundColor(.yellow)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, pattern: .dot, color: .blue)
//            .font(.system(size: 24, weight: .black, design: .monospaced))
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
