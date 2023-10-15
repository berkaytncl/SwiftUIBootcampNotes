//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 11.10.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .purple
        
        let attributes: [NSAttributedString.Key : Any] = [.foregroundColor : UIColor.white]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker("Filter: ", selection: $selection) {
            ForEach(filterOptions, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
