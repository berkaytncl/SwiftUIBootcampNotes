//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 12.10.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            HStack {
                Text("Rating:")
//                Slider(value: $sliderValue)
//                Slider(value: $sliderValue, in: 1...5)
//                Slider(value: $sliderValue, in: 0...5, step: 0.1)
                Slider(
                    value: $sliderValue,
                    in: 1...5,
                    step: 1.0,
                    onEditingChanged: { _ in
                        color = Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                    },
                    minimumValueLabel: Text("1"),
                    maximumValueLabel: Text("5"),
                    label: {
                        Text("Title")
                    }
                )
                    .font(.title)
                    .tint(.red)
            }
            Text(
                String(format: "%.1f", sliderValue)
            )
            .foregroundColor(color)
            Spacer()
        }
        .padding()
        .padding(.horizontal, 80)
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
