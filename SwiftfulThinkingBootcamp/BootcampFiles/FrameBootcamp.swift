//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 7.10.2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .background(Color.red)
                .frame(height: 100, alignment: .bottom)
                .background(Color.orange)
                .frame(width: 150)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(maxHeight: 400)
                .background(Color.green)
                .frame(minHeight: 0, maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
        }
        .frame(minHeight: 0, maxHeight: .infinity)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
