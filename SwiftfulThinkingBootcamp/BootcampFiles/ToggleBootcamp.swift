//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 11.10.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .tint(.purple)
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.horizontal, 90)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
